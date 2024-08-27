struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(55283u, 38648u, 51817u, 6360u), vec4<u32>(0u, 19206u, 1u, 0u), vec4<u32>(15740u, 1u, 43628u, 1u), vec4<u32>(0u, 4294967295u, 13216u, 30576u), vec4<u32>(79704u, 1u, 0u, 4847u), vec4<u32>(0u, 4294967295u, 69517u, 10423u), vec4<u32>(4294967295u, 22276u, 1u, 15278u), vec4<u32>(44218u, 41623u, 10198u, 37628u), vec4<u32>(48571u, 42950u, 46504u, 18202u), vec4<u32>(1u, 103010u, 4294967295u, 17708u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 34476u, 4294967295u, 76640u), vec4<u32>(68601u, 98851u, 4294967295u, 4294967295u), vec4<u32>(0u, 32199u, 1u, 3537u), vec4<u32>(4294967295u, 1u, 27537u, 6527u), vec4<u32>(33707u, 1u, 24516u, 0u), vec4<u32>(1u, 41791u, 40648u, 27188u), vec4<u32>(1u, 46576u, 50896u, 1u), vec4<u32>(1u, 14500u, 42410u, 10497u), vec4<u32>(56413u, 4294967295u, 0u, 1u), vec4<u32>(0u, 86458u, 4294967295u, 0u), vec4<u32>(1u, 0u, 0u, 50709u), vec4<u32>(1u, 0u, 1u, 20359u), vec4<u32>(36571u, 1u, 4294967295u, 35076u), vec4<u32>(1u, 57109u, 51458u, 1u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 65683u, 0u), vec4<u32>(0u, 20668u, 26768u, 2105u), vec4<u32>(0u, 0u, 13472u, 91003u), vec4<u32>(1u, 55011u, 59674u, 24579u));

var<private> global2: array<bool, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, -1168f, -416f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1681f, -1048f, 900f), vec3<f32>(228f, 694f, 319f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1919f, -198f, 2347f) + vec3<f32>(411f, 1067f, 762f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(step(355f, -248f)), _wgslsmith_f_op_f32(1541f * 463f))))), 4294967295u, u_input.b, true);
    global0 = global2[_wgslsmith_index_u32(reverseBits(~(37405u | ~u_input.b)) & var_0.c, 4u)];
    var var_1 = ~(~max(-max(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(-2147483647i, -25084i, -2147483647i, 9085i)), -(~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_2 = vec2<bool>(var_0.d, any(vec3<bool>(false, true, any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(117388u, 4u)], true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_0.b, 4u)]), true)))));
    global1 = array<vec4<u32>, 30>();
    return vec2<u32>(countOneBits(~8693u), ~(~1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = arg_1;
    global2 = array<bool, 4>();
    global2 = array<bool, 4>();
    return all(vec3<bool>(56372i <= u_input.a.x, true, all(vec3<bool>(false, false, true)))) != true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !((_wgslsmith_mod_u32(~arg_3.c, _wgslsmith_div_u32(1u, u_input.b)) == (arg_3.b | 1u)) != false);
    var_0 = false;
    global0 = !func_4(func_3(), arg_3, global2[_wgslsmith_index_u32(arg_3.c, 4u)]);
    global0 = arg_3.a.x != 692f;
    let var_1 = vec4<u32>(max(30063u, ~func_3().x), _wgslsmith_dot_vec4_u32(arg_1, abs(firstLeadingBit(arg_1))), u_input.b, arg_3.b);
    return arg_3;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    let var_0 = Struct_2(func_2(u_input.a.zx, _wgslsmith_div_vec4_u32(~global1[_wgslsmith_index_u32(u_input.b, 30u)] >> (vec4<u32>(1u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(u_input.b, 30u)]), arg_1.x > arg_1.x, Struct_1(vec3<f32>(-105f, -205f, _wgslsmith_f_op_f32(trunc(-1197f))), u_input.b & max(4294967295u, 1u), u_input.b, !global2[_wgslsmith_index_u32(u_input.b, 4u)] & true)), func_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz, u_input.a.zx), u_input.a.yy), select(vec2<i32>(u_input.a.x, arg_0), _wgslsmith_mod_vec2_i32(u_input.a.yx, vec2<i32>(3247i, 1i)), any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)])))), _wgslsmith_div_vec4_u32(select(~global1[_wgslsmith_index_u32(u_input.b, 30u)], vec4<u32>(0u, u_input.b, 31991u, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<bool>(global2[_wgslsmith_index_u32(6739u, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], false, global2[_wgslsmith_index_u32(49944u, 4u)]), false)), min(vec4<u32>(0u, 1u, 1u, 4294967295u), ~vec4<u32>(u_input.b, 0u, u_input.b, 71375u))), true, func_2(~vec2<i32>(-2147483647i, arg_0), abs(vec4<u32>(9514u, u_input.b, u_input.b, u_input.b)), true, func_2(vec2<i32>(u_input.a.x, arg_0), vec4<u32>(89304u, u_input.b, u_input.b, u_input.b), !global2[_wgslsmith_index_u32(u_input.b, 4u)], func_2(vec2<i32>(38319i, arg_0), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), false, Struct_1(vec3<f32>(arg_1.x, -1000f, arg_1.x), u_input.b, 18113u, global2[_wgslsmith_index_u32(30259u, 4u)]))))), func_2(vec2<i32>(i32(-1i) * -46529i, 2147483647i) | vec2<i32>(u_input.a.x, 35962i), vec4<u32>(u_input.b, u_input.b, ~u_input.b, u_input.b) << (~vec4<u32>(u_input.b, 1u, 0u, u_input.b) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(abs(u_input.b), 4u)], Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-718f)), _wgslsmith_f_op_f32(-arg_1.x)), 1u, u_input.b, global2[_wgslsmith_index_u32(~51755u, 4u)] | global2[_wgslsmith_index_u32(max(u_input.b, u_input.b), 4u)])));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.x, var_0.c.a.x, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f + var_0.c.a.x))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1274f * var_0.b.a.x), 1362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)), -837f))));
    return func_2(vec2<i32>(_wgslsmith_add_i32(~(arg_0 << (var_0.c.c % 32u)), firstTrailingBit(-arg_0)), _wgslsmith_dot_vec2_i32(u_input.a.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(-33571i, arg_0), _wgslsmith_clamp_vec2_i32(u_input.a.xz, vec2<i32>(arg_0, u_input.a.x), u_input.a.zx)))), ~global1[_wgslsmith_index_u32(abs(min(abs(22566u), var_0.b.c)), 30u)], var_0.b.d & true, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zzz)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - -793f))), var_0.a.b, ~1u, false)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-328f, _wgslsmith_f_op_f32(sign(-865f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(449f, 634f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -441f), _wgslsmith_f_op_f32(ceil(165f)), !global2[_wgslsmith_index_u32(95953u, 4u)]))))));
    global1 = array<vec4<u32>, 30>();
    var var_1 = u_input.a.x;
    global1 = array<vec4<u32>, 30>();
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.b, 32504u, 1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 14381u), vec3<u32>(u_input.b, 32484u, 4294967295u), vec3<u32>(u_input.b, 4294967295u, 22868u)) ^ ~vec3<u32>(75424u, u_input.b, 4294967295u), vec3<u32>(u_input.b, ~u_input.b, func_1(u_input.a.x, var_0)))), vec3<u32>(~(~u_input.b), 4294967295u, 17529u));
    var_1 = u_input.a.x;
    global1 = array<vec4<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 611f, _wgslsmith_div_f32(var_0.x, -1730f), 1000f), _wgslsmith_div_vec3_u32(~vec3<u32>(10824u, u_input.b, 58610u) >> (vec3<u32>(var_3.x, u_input.b, u_input.b) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(64690u, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)))) >> (min(~(vec3<u32>(u_input.b, u_input.b, var_3.x) | vec3<u32>(u_input.b, 1u, u_input.b)), ~vec3<u32>(2638u, var_3.x, u_input.b)) % vec3<u32>(32u)));
}

