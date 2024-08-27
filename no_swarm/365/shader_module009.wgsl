struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(33677i, 2147483647i, 2147483647i), Struct_2(true, Struct_1(vec2<bool>(false, true), vec3<u32>(39848u, 2348u, 10062u), vec2<f32>(-2707f, 385f), 3268i, 1u), Struct_1(vec2<bool>(true, false), vec3<u32>(28736u, 76612u, 16956u), vec2<f32>(1219f, 102f), -29975i, 15018u)), vec2<u32>(0u, 1u), vec2<bool>(false, false));

var<private> global1: Struct_2;

var<private> global2: f32 = 2830f;

var<private> global3: array<vec3<u32>, 7>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = -1025f;
    var var_1 = -12823i;
    let var_2 = min(-2147483647i, _wgslsmith_mod_i32(countOneBits(abs(-41100i | global1.b.d)), global1.b.d));
    let var_3 = true & (1u > global0.c.x);
    var var_4 = Struct_3(select(min(vec3<i32>(-1i, -u_input.b.x, -u_input.a), _wgslsmith_add_vec3_i32(u_input.b.xzy, vec3<i32>(54347i, global0.b.c.d, u_input.a))), vec3<i32>(u_input.b.x, 13140i, -31590i << (~global1.b.b.x % 32u)), !(1u > _wgslsmith_sub_u32(global1.b.e, global0.b.c.b.x))), global0.b, _wgslsmith_mod_vec2_u32(global0.b.b.b.xx, global1.b.b.xz), !global1.c.a);
    return vec3<i32>(-(~global0.b.c.d), 34422i, ~0i);
}

fn func_2() -> u32 {
    global0 = Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(2147483647i, 1i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(32402i, global1.c.d, -1i), vec3<i32>(-6359i, u_input.b.x, -7124i))), min(func_3(vec2<bool>(global1.a, global1.c.a.x), vec3<i32>(-4404i, 1i, 2147483647i)), _wgslsmith_mod_vec3_i32(u_input.b.xzy, vec3<i32>(global0.b.b.d, 0i, global0.a.x)))), ~_wgslsmith_mod_vec3_i32(u_input.b.zxy, -u_input.b.xyw)), global0.b, ~(~vec2<u32>(global0.b.c.b.x, 1u) & vec2<u32>(21204u, _wgslsmith_mod_u32(global0.c.x, global1.b.b.x))), select(!global0.b.c.a, !(!global0.b.b.a), select(!global1.b.a, select(vec2<bool>(global1.c.a.x, global0.b.a), select(global1.b.a, vec2<bool>(global1.a, global0.d.x), true), global0.d.x), global1.b.a.x)));
    let var_0 = vec3<i32>(-1i, -global0.a.x, 1i);
    global1 = global0.b;
    var var_1 = vec2<i32>(func_3(vec2<bool>(1u <= global1.c.e, !global0.d.x), vec3<i32>(-66955i, u_input.b.x, 2147483647i) & -vec3<i32>(7085i, global0.a.x, 50880i)).x, abs(u_input.a));
    var var_2 = (abs(vec3<i32>(countOneBits(var_1.x), u_input.b.x, 0i)) & min(-(global0.a ^ vec3<i32>(-1i, 2147483647i, var_1.x)), _wgslsmith_clamp_vec3_i32(u_input.b.xww, vec3<i32>(global1.c.d, 1i, var_1.x) | vec3<i32>(global0.a.x, u_input.b.x, u_input.a), vec3<i32>(global0.a.x, var_0.x, var_1.x)))) ^ select(-abs(-vec3<i32>(var_0.x, 2147483647i, 2287i)), global0.a, true);
    return _wgslsmith_add_u32(abs(~global1.b.b.x | abs(1u)), firstTrailingBit(global1.b.e) | abs(reverseBits(0u)));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(vec2<bool>((firstLeadingBit(91337u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(40902u, 0u, global1.b.e), vec3<u32>(global1.b.b.x, global0.c.x, 1u))) && false, true), select(vec3<u32>(1u | (28720u | global1.c.b.x), ~global1.c.b.x, global1.c.e), global3[_wgslsmith_index_u32(~global1.b.e ^ _wgslsmith_clamp_u32(abs(17688u), func_2(), 16106u), 7u)], (global0.b.c.d < (global1.c.d & global1.c.d)) | !(global0.b.c.b.x <= global0.b.c.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.c) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(326f, -776f), vec2<f32>(-1527f, global0.b.b.c.x))))))), u_input.b.x, abs(firstTrailingBit(abs(27580u ^ global0.b.b.b.x))));
    var var_1 = global0.b;
    global2 = _wgslsmith_f_op_f32(global1.c.c.x + _wgslsmith_f_op_f32(min(557f, global1.c.c.x)));
    global0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), countOneBits(vec4<i32>(var_0.d, 2147483647i, var_1.c.d, -2147483647i))) & (min(var_1.b.d, -32985i) & _wgslsmith_mod_i32(-1326i, 51993i)), min(max(_wgslsmith_mod_i32(global1.b.d, -4518i), var_0.d), global1.c.d), _wgslsmith_dot_vec2_i32(~(~u_input.b.xy), firstTrailingBit(vec2<i32>(u_input.a, global0.b.c.d)) | abs(vec2<i32>(var_1.b.d, -65936i)))), global0.b, vec2<u32>(select(global1.b.e, ~(~0u), var_0.e < global1.b.b.x), 39216u), select(!global1.c.a, global1.c.a, global0.d));
    global3 = array<vec3<u32>, 7>();
    return Struct_3(_wgslsmith_add_vec3_i32(u_input.b.www, -global0.a), Struct_2(global0.b.b.a.x, global0.b.b, var_1.c), vec2<u32>(~(_wgslsmith_sub_u32(25753u, global1.c.e) << (abs(1u) % 32u)), max(~0u, 0u)), select(select(!global1.c.a, global0.b.b.a, vec2<bool>(false, any(vec3<bool>(false, true, true)))), select(!(!vec2<bool>(true, var_0.a.x)), select(var_0.a, !vec2<bool>(true, global1.b.a.x), !vec2<bool>(false, global1.c.a.x)), var_1.c.a), !global0.b.a & var_1.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(abs(func_1().a), var_0.b, _wgslsmith_sub_vec2_u32(global1.c.b.yy & var_0.c, vec2<u32>(~abs(var_0.b.b.b.x), global0.b.b.b.x)), !select(!select(var_0.b.c.a, vec2<bool>(true, false), global1.b.a.x), !global1.c.a, true));
    var var_2 = func_1().b.c;
    var_2 = Struct_1(vec2<bool>(false, global0.d.x), vec3<u32>(_wgslsmith_div_u32(global0.c.x, var_2.e), func_1().c.x, abs(~var_1.c.x) | 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c.c.x, 280f) + var_0.b.c.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.c.x, var_0.b.c.c.x) * vec2<f32>(global0.b.b.c.x, -2775f))))), abs(1i), global1.c.e);
    var var_3 = ~global0.b.c.e;
    global2 = -1654f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.b.d);
}

