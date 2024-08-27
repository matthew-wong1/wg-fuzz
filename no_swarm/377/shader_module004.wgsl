struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: vec2<u32> = vec2<u32>(986u, 15447u);

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(-313f))))) + _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(floor(523f)))), Struct_1(~_wgslsmith_sub_u32(4294967295u, 18962u), select(var_0.b.b, !var_0.b.b, true), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(61475i, 27937i), vec2<i32>(0i, 2147483647i)))), arg_0.xzx, !select(select(var_0.d, select(var_0.d, vec3<bool>(var_0.b.b.x, true, true), var_0.d.x), var_0.b.b.x), select(vec3<bool>(false, false, var_0.b.b.x), select(var_0.b.b, var_0.d, var_0.d), var_0.b.b.x), false));
    global2 = array<Struct_2, 30>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(var_1.a + 836f))))), Struct_1(var_0.b.a, select(!select(var_1.d, var_1.b.b, true), var_1.d, var_0.b.b), u_input.a.x), arg_0.wwy | vec3<i32>(var_0.b.c, var_0.c.x ^ arg_0.x, select(select(var_0.c.x, u_input.a.x, true), i32(-1i) * -85928i, false)), select(var_0.b.b, !(!(!var_0.d)), !all(select(var_0.b.b.xz, var_0.b.b.yx, var_0.d.xy))));
    var_0 = var_1;
    return 1u << (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b.a, min(29846u, 4294967295u)), vec3<u32>(var_1.b.a, 4294967295u, 0u) & ~vec3<u32>(global1.x, global1.x, var_0.b.a))) % 32u);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(reverseBits(u_input.a.x), 1i, ~0i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1025f)))), Struct_1(func_3(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 43421i, -68684i, u_input.a.x))), vec3<bool>(false, true, false), max(_wgslsmith_div_i32(max(u_input.a.x, var_0.x), _wgslsmith_add_i32(-1i, -22029i)), 43511i)), -firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), true)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(56654u, ~var_1.b.a) ^ global1.x, abs(4294967295u)) | var_1.b.a, 30u)];
    let var_3 = var_1.d;
    var_0 = select(~(countOneBits(vec3<i32>(var_2.b.c, -20319i, 20200i) | vec3<i32>(var_1.b.c, -2147483647i, var_0.x)) << (vec3<u32>(~global1.x, _wgslsmith_add_u32(0u, var_1.b.a), 4294967295u | var_1.b.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(var_2.c, u_input.a), select(false, false, any(!var_2.d)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a, arg_0, -577f, var_2.a), vec4<f32>(var_2.a, 387f, -356f, arg_0)))) * vec4<f32>(-275f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_div_f32(var_1.a, 1286f), _wgslsmith_f_op_f32(max(arg_0, -940f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2134f), var_1.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), var_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(673f, 1690f) - vec2<f32>(-449f, var_2.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1918f, var_1.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2201f, -580f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, 2128f))), !var_2.b.b.xy))), Struct_1(global1.x, vec3<bool>(var_2.d.x | (arg_0 > var_1.a), var_3.x, false), 2147483647i), ~_wgslsmith_dot_vec3_i32(~(~vec3<i32>(2147483647i, 2147483647i, var_0.x)), var_1.c >> (~vec3<u32>(18454u, 83512u, 1u) % vec3<u32>(32u))));
}

fn func_1() -> vec2<u32> {
    global1 = ~vec2<u32>(10382u & ~global1.x, ~abs(~global1.x));
    let var_0 = true;
    var var_1 = _wgslsmith_mult_vec4_u32(select(~min(~vec4<u32>(global1.x, 0u, 0u, global1.x), firstTrailingBit(vec4<u32>(global1.x, 22535u, global1.x, 13675u))), vec4<u32>(41529u, global1.x, global1.x, ~(~global1.x)), var_0), firstLeadingBit(firstLeadingBit(min(vec4<u32>(global1.x, global1.x, 538u, 1u), select(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(4294967295u, global1.x, global1.x, global1.x), vec4<bool>(var_0, var_0, false, var_0))))));
    global2 = array<Struct_2, 30>();
    var var_2 = func_2(759f);
    return _wgslsmith_clamp_vec2_u32(countOneBits(var_1.zx << (_wgslsmith_mod_vec2_u32(vec2<u32>(1589u, 8002u), abs(vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))), var_1.xz, vec2<u32>(38936u, firstTrailingBit(var_2.d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    global2 = array<Struct_2, 30>();
    let var_0 = ~max(~(~vec2<u32>(34676u, 1u)), ~vec2<u32>(global1.x, 15654u)) & vec2<u32>(_wgslsmith_div_u32(global1.x << ((global1.x | global1.x) % 32u), min(global1.x, global1.x)), ~(~4787u) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(57455u, global1.x), global1.x));
    global2 = array<Struct_2, 30>();
    global2 = array<Struct_2, 30>();
    let var_1 = func_1();
    let var_2 = Struct_2(-284f, global0[_wgslsmith_index_u32(countOneBits(func_2(-387f).d.a) >> (var_0.x % 32u), 10u)], vec3<i32>(-1i) * -(~u_input.a), vec3<bool>((all(vec4<bool>(false, false, false, true)) && true) & false, any(func_2(-1000f).d.b), all(vec4<bool>(true, all(vec4<bool>(true, false, false, false)), select(true, false, true), true))));
    var var_3 = vec3<u32>(~abs(func_1().x), _wgslsmith_mult_u32((var_2.b.a >> (~var_0.x % 32u)) | _wgslsmith_add_u32(0u, ~global1.x), _wgslsmith_mod_u32(0u << (var_2.b.a % 32u), 1u)), firstLeadingBit(~0u));
    global0 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(370f)), var_2.a);
}

