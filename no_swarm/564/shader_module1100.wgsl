struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1i, vec2<f32>(-1019f, -1460f), -53108i, vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), true), Struct_1(-15239i, vec2<f32>(-193f, 877f), -48349i, vec4<i32>(34063i, 48458i, i32(-2147483648), -23307i), false), Struct_1(-1i, vec2<f32>(-1640f, -808f), i32(-2147483648), vec4<i32>(16884i, 1i, 32744i, 22890i), true), Struct_1(2147483647i, vec2<f32>(1000f, -1264f), 0i, vec4<i32>(2147483647i, 23159i, 2147483647i, i32(-2147483648)), true), Struct_1(-3577i, vec2<f32>(-597f, -1776f), i32(-2147483648), vec4<i32>(2147483647i, 1i, 1i, 0i), true), Struct_1(-42589i, vec2<f32>(246f, -294f), 0i, vec4<i32>(0i, -2716i, -5389i, 1i), true), Struct_1(25067i, vec2<f32>(199f, 1763f), 0i, vec4<i32>(2483i, -1i, 7594i, i32(-2147483648)), false), Struct_1(i32(-2147483648), vec2<f32>(761f, -210f), 2147483647i, vec4<i32>(1i, 0i, 0i, 1i), false), Struct_1(-14537i, vec2<f32>(-618f, 532f), -34981i, vec4<i32>(2147483647i, 6259i, -25546i, 32759i), false), Struct_1(2147483647i, vec2<f32>(589f, 1629f), -1i, vec4<i32>(-3117i, -1i, 1i, -348i), false), Struct_1(2698i, vec2<f32>(-1617f, 278f), 1i, vec4<i32>(-6209i, -2410i, 66077i, -1i), false), Struct_1(-2400i, vec2<f32>(-1591f, 1000f), i32(-2147483648), vec4<i32>(0i, -25131i, i32(-2147483648), i32(-2147483648)), true));

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<u32>(0u, 0u, 4294967295u)), Struct_2(vec3<u32>(4291u, 26356u, 0u)), Struct_2(vec3<u32>(4294967295u, 50043u, 65761u)), Struct_2(vec3<u32>(0u, 0u, 4294967295u)));

var<private> global3: vec3<u32> = vec3<u32>(1u, 34985u, 35663u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    let var_0 = reverseBits(max(select(_wgslsmith_mult_vec3_i32(reverseBits(u_input.b), u_input.b), -(~vec3<i32>(u_input.b.x, 6158i, u_input.b.x)), vec3<bool>(true, true, true)), u_input.a.wwz));
    global0 = array<Struct_2, 10>();
    let var_1 = global0[_wgslsmith_index_u32(7638u, 10u)];
    let var_2 = -(~(-(vec3<i32>(0i, 21085i, u_input.b.x) | vec3<i32>(1i, u_input.a.x, -21175i))));
    global2 = array<Struct_2, 4>();
    return Struct_2(_wgslsmith_mod_vec3_u32(var_1.a, ~((var_1.a << (vec3<u32>(0u, 9708u, var_1.a.x) % vec3<u32>(32u))) >> (var_1.a % vec3<u32>(32u)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1074f, -621f), vec2<f32>(-1507f, -1159f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1146f, 1837f))), !vec2<bool>(false, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-134f, -309f), vec2<f32>(733f, -1596f), vec2<bool>(false, false))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1860f, 1324f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1251f, -2564f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2181f, -1274f) - vec2<f32>(-3231f, 1000f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(874f, -368f), vec2<f32>(1000f, -1000f), arg_1)))), all(!select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1))))), -(u_input.b.x & abs(_wgslsmith_mod_i32(1i, u_input.a.x))), vec4<i32>(-_wgslsmith_div_i32(0i, u_input.a.x) & u_input.a.x, u_input.b.x, -u_input.a.x, 19206i), arg_1);
    var var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(38937u, _wgslsmith_clamp_u32(global3.x, u_input.c, u_input.c) ^ ~arg_0.a.x, _wgslsmith_mod_u32(arg_0.a.x, ~u_input.c), 1u), abs(vec4<u32>(1u, global3.x, u_input.c, 4294967295u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(13450u, 0u, 1u, u_input.c) | vec4<u32>(global3.x, 19829u, global3.x, arg_0.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global3.x, u_input.c, global3.x), vec4<u32>(61166u, global3.x, arg_0.a.x, 18933u))), abs(vec4<u32>(min(41122u, 85088u), ~arg_0.a.x, ~arg_0.a.x, ~4294967295u))));
    let var_2 = var_0.e;
    var var_3 = Struct_2(vec3<u32>(arg_0.a.x, _wgslsmith_dot_vec3_u32(var_1.ywz, func_2().a), u_input.c));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 591f, -1357f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(830f, -541f, -1000f), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, var_0.b.x, var_0.b.x) * vec3<f32>(487f, var_0.b.x, 748f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -690f, var_0.b.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(391f, 1000f, var_0.b.x) * vec3<f32>(688f, var_0.b.x, 701f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 110f, var_0.b.x) * vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), !vec3<bool>(true, true, arg_1)))))));
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = func_2();
    let var_1 = global3.x;
    let var_2 = func_3(global2[_wgslsmith_index_u32(var_0.a.x, 4u)], true);
    var var_3 = -17953i;
    var var_4 = 644f;
    return min(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_1.x, u_input.a.x) & u_input.a.xyw, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, max(-1i, arg_1.x) << (select(1u, 1u, false) % 32u), ~(-2147483647i)), abs(firstTrailingBit(select(vec3<i32>(-24892i, u_input.b.x, arg_1.x), u_input.b, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 10>();
    var var_0 = -141f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1471f, arg_0.b.x)) - arg_2.b.x))));
    var var_2 = vec3<bool>(arg_0.e, !arg_2.e, !(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(min(-333f, -1696f))) >= arg_0.b.x));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))), arg_2.b.x)), arg_0.b.x));
    return global1[_wgslsmith_index_u32(~(~global3.x), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global1[_wgslsmith_index_u32(1u, 12u)], ~u_input.a.yyx, global1[_wgslsmith_index_u32(abs(firstLeadingBit(global3.x)), 12u)], countOneBits(vec3<i32>(~35835i, ~8860i, ~u_input.b.x) ^ func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, 218f, -773f, -960f)), -u_input.b.zy)));
    var var_1 = var_0.e;
    let var_2 = func_4(global1[_wgslsmith_index_u32(0u, 12u)], vec3<i32>(countOneBits(u_input.b.x), reverseBits(~_wgslsmith_clamp_i32(2147483647i, 35202i, var_0.a)), _wgslsmith_div_i32(_wgslsmith_mod_i32(~u_input.b.x, ~u_input.b.x), var_0.d.x)), Struct_1(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, 184f), vec2<f32>(var_0.b.x, 1160f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -790f)), vec2<bool>(false, var_0.e)))), 2147483647i >> (max(1u << (1u % 32u), 1u) % 32u), var_0.d, true), vec3<i32>(-1i) * -u_input.b).a;
    var_1 = var_0.e;
    var var_3 = global1[_wgslsmith_index_u32(~4294967295u, 12u)];
    let var_4 = var_3.e;
    let var_5 = _wgslsmith_div_f32(var_3.b.x, _wgslsmith_f_op_f32(-var_0.b.x));
    let var_6 = global2[_wgslsmith_index_u32(~func_3(func_2(), !(!(var_3.e != var_0.e))).a.x, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(541f, 1318f))) * _wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(626f, var_0.b.x)), select(vec2<bool>(var_0.e, false), vec2<bool>(var_0.e, var_0.e), true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x - 1709f))))));
}

