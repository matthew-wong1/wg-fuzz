struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(0u, 0u, 1u), 1i, vec3<f32>(482f, -149f, 732f), Struct_1(-37877i, -1i, i32(-2147483648), vec3<bool>(true, true, false)), 4294967295u);

var<private> global2: array<u32, 26>;

var<private> global3: u32 = 1u;

var<private> global4: array<vec2<bool>, 2>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-u_input.c, global1.d.a | -20540i) | arg_2.x, -1i), -firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.d.a, arg_2.x), vec2<i32>(arg_2.x, 40800i)), reverseBits(u_input.e))));
    global0 = array<f32, 23>();
    var var_1 = Struct_3(Struct_2(vec3<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1255u, global2[_wgslsmith_index_u32(global1.a.x, 26u)], u_input.d), global1.a), _wgslsmith_add_u32(global1.a.x, 4294967295u)), ~(1u ^ global2[_wgslsmith_index_u32(18015u, 26u)])), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -2147483647i, u_input.a, global1.d.c), vec4<i32>(-33681i, u_input.c, 2147483647i, 0i))) >> (_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(u_input.b, 26u)], _wgslsmith_mult_u32(0u, 45504u)) % 32u), _wgslsmith_f_op_vec3_f32(min(global1.c, _wgslsmith_f_op_vec3_f32(-global1.c))), global1.d, reverseBits(0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 26u)], 26u)], 4294967295u, global1.a.x), vec4<u32>(0u, 109601u, u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)])), max(~vec4<u32>(6437u, 39474u, u_input.b, u_input.d), vec4<u32>(18240u, global2[_wgslsmith_index_u32(global1.e, 26u)], 4294967295u, global1.e))), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(13317u, 33820u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), firstLeadingBit(global1.a.x))), global1.d.b & -2147483647i, global1.d.d.x, vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global1.e), vec3<u32>(1u, 0u, u_input.d)), 0u)));
    let var_2 = _wgslsmith_f_op_f32(ceil(global1.c.x));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1499f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.c.x), -377f)), var_2)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-383f))))));
    return firstTrailingBit(min(~global2[_wgslsmith_index_u32(1966u, 26u)], abs(global1.e)));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: i32) -> vec3<u32> {
    var var_0 = vec2<u32>(min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(global1.a, arg_0.a.a), vec3<u32>(1u, 0u, global1.e)), select(vec3<u32>(global1.a.x, 0u, 42102u) ^ vec3<u32>(6146u, global1.e, arg_2), vec3<u32>(arg_0.e.x, 12192u, 83705u), true)), 4294967295u), ~abs(func_3(arg_1 <= -80104i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, 201f) * arg_0.a.c.xz), max(vec2<i32>(arg_3, -27576i), vec2<i32>(2147483647i, -1i)))));
    let var_1 = select(arg_0.a.d.d.zy, global1.d.d.zy, !select(arg_0.a.d.d.xx, !(!arg_0.a.d.d.zx), !vec2<bool>(global1.d.d.x, arg_0.a.d.d.x)));
    global2 = array<u32, 26>();
    var var_2 = vec3<bool>(any(select(vec2<bool>(1828f >= arg_0.a.c.x, var_1.x), global4[_wgslsmith_index_u32(~min(arg_2, 44770u), 2u)], !vec2<bool>(global1.d.d.x, arg_0.d))), global1.d.d.x, !all(arg_0.a.d.d));
    global3 = firstLeadingBit(arg_2);
    return global1.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = max(arg_1.wx, vec2<i32>(0i, ~arg_2.d.a)) & abs(arg_1.ww);
    let var_1 = max(_wgslsmith_mod_vec3_i32(arg_1.wxx, -arg_1.wzy), vec3<i32>(_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(-39586i, -9422i)), firstLeadingBit(vec2<i32>(-9611i, 2147483647i))), ~_wgslsmith_div_i32(-1i, -13960i & arg_2.d.c), -u_input.c));
    global3 = global1.e;
    global4 = array<vec2<bool>, 2>();
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -442f)));
    return i32(-1i) * -3680i;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = global1.d;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(global1.c.zy * global1.c.zy), vec4<i32>(-9453i, i32(-1i) * -1i, -2147483647i, i32(-1i) * -21387i), Struct_2(func_2(Struct_3(Struct_2(global1.a, arg_1, vec3<f32>(-2410f, -547f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 26u)], 23u)]), Struct_1(u_input.a, var_0.c, 37696i, vec3<bool>(global1.d.d.x, true, false)), u_input.b), vec2<u32>(4294967295u, 46201u), _wgslsmith_div_i32(u_input.e.x, 1i), false, global1.a.yy >> (vec2<u32>(global1.e, 1u) % vec2<u32>(32u))), ~1i, global1.e, u_input.c << (28235u % 32u)), var_0.b, global1.c, global1.d, countOneBits(_wgslsmith_mod_u32(4287u, global2[_wgslsmith_index_u32(global1.e, 26u)])) >> (~4294967295u % 32u)), 4294967295u);
    let var_2 = abs(1u);
    return Struct_3(Struct_2(vec3<u32>(5163u, ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22528u, 26u)], 26u)] ^ var_2), ~_wgslsmith_sub_u32(global1.e, u_input.d)), i32(-1i) * -var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, _wgslsmith_f_op_f32(f32(-1f) * -755f), global1.c.x)), Struct_1(_wgslsmith_mult_i32(global1.d.c & -15175i, -47965i), 0i, -global1.d.c << (reverseBits(var_2) % 32u), var_0.d), _wgslsmith_mult_u32(1u, ~u_input.b)), global1.a.xz, arg_1, !(global1.d.d.x && global1.d.d.x), ~vec2<u32>(0u, firstLeadingBit(18435u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, u_input.a);
    var var_1 = true;
    let var_2 = var_0.a.a.x > ~firstTrailingBit(countOneBits(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 26u)])));
    let var_3 = false;
    global3 = var_0.e.x;
    var var_4 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b.x, 26u)], 26u)], 26u)], 4294967295u) >> (firstLeadingBit(var_0.b.x) % 32u), 89444u), 1u), ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(13808u, 1u)), abs(global1.a.xy | global1.a.yy)), u_input.b);
    var var_5 = !(!select(!select(vec4<bool>(true, var_2, false, true), vec4<bool>(var_3, true, true, false), global1.d.d.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(var_3, global1.d.d.x, global1.d.d.x, true), select(vec4<bool>(var_0.a.d.d.x, true, var_0.a.d.d.x, var_2), vec4<bool>(false, var_3, var_0.d, global1.d.d.x), vec4<bool>(true, true, false, var_0.a.d.d.x)), select(vec4<bool>(var_2, true, true, var_0.d), vec4<bool>(var_3, true, var_2, false), global1.d.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-661f)), _wgslsmith_mult_u32(global1.e, 0u));
}

