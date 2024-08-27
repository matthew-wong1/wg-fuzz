struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1u, 14203i, -1207f), Struct_1(1u, 0i, -314f), Struct_1(21759u, 23972i, 166f), Struct_1(6916u, -1i, 2310f), Struct_1(0u, -1i, -2295f), Struct_1(65749u, 0i, -824f), Struct_1(4294967295u, 1i, 1000f), Struct_1(0u, 1i, 1256f));

var<private> global1: array<bool, 4> = array<bool, 4>(false, false, true, false);

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec3<f32>;

var<private> global4: f32 = -103f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = countOneBits(u_input.a.wz);
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_1.c, -923f))))) + vec3<f32>(arg_0.c, arg_1.c, global3.x));
    var var_1 = _wgslsmith_mult_vec2_u32(max(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a, u_input.b), arg_2.zy), vec2<u32>(0u, arg_2.x) | arg_2.xy, ~arg_2.yy) >> (((vec2<u32>(u_input.b, arg_1.a) ^ vec2<u32>(u_input.b, arg_0.a)) >> (vec2<u32>(u_input.b, arg_0.a) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_2.wy), ~arg_2.wy);
    var var_2 = global3.xy;
    let var_3 = Struct_1(~u_input.b & 60694u, -select(11489i, 1i, !(!global1[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_f_op_f32(-1f));
    return ~u_input.a.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(~1u, _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(func_3(global0[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 8u)], global0[_wgslsmith_index_u32(1u, 8u)], vec4<u32>(u_input.b, 14622u, u_input.b, 4294967295u)), -u_input.a.x, firstTrailingBit(-1i) & ~u_input.a.x)), global3.x);
    var_0 = global2[_wgslsmith_index_u32(min(1u, 28317u), 20u)];
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(41416u & _wgslsmith_dot_vec4_u32(min(vec4<u32>(40963u, 91110u, 0u, 25203u), vec4<u32>(39173u, var_0.a, var_0.a, var_0.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(5724u, 4294967295u, u_input.b, var_0.a), vec4<u32>(32237u, var_0.a, 3056u, var_0.a))), var_0.a), vec2<u32>(~(~44025u), _wgslsmith_mult_u32(u_input.b << (var_0.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(27641u, 0u, u_input.b, u_input.b), ~vec4<u32>(var_0.a, var_0.a, 117269u, 4294967295u)))));
    var var_2 = 1u;
    var var_3 = global2[_wgslsmith_index_u32(var_0.a, 20u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(trunc(global3.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec3_u32(abs(arg_3 & arg_3), vec3<u32>(~4294967295u, ~arg_0.x, _wgslsmith_sub_u32(arg_3.x, 65989u)))), 8u)];
    let var_1 = select(vec4<bool>(true, any(vec2<bool>(1000f == arg_1.x, !global1[_wgslsmith_index_u32(1u, 4u)])), (arg_2.c >= -463f) || all(vec3<bool>(true, global1[_wgslsmith_index_u32(46784u, 4u)], global1[_wgslsmith_index_u32(arg_0.x, 4u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.a, ~arg_2.a) | u_input.b, 4u)]), vec4<bool>(!all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)], false, global1[_wgslsmith_index_u32(arg_2.a, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], true, global1[_wgslsmith_index_u32(arg_3.x, 4u)], false), global1[_wgslsmith_index_u32(0u, 4u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~reverseBits(u_input.b), 6489u), 4u)], true, u_input.b > 4294967295u), false);
    global0 = array<Struct_1, 8>();
    let var_2 = abs(1u);
    let var_3 = global1[_wgslsmith_index_u32(0u, 4u)];
    return firstLeadingBit(vec2<u32>(u_input.b, var_2));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(~(~min(vec3<u32>(28120u, u_input.b, 61926u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 40274u, u_input.b), vec3<u32>(0u, 49635u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-676f, global3.x, global3.x, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1147f, -600f, global3.x))), vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_2()))))), Struct_1(u_input.b, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.c, arg_1.c), _wgslsmith_f_op_f32(select(global3.x, arg_1.c, global1[_wgslsmith_index_u32(arg_1.a, 4u)])), !global1[_wgslsmith_index_u32(arg_1.a, 4u)])))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, arg_1.a, 51307u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u) | vec3<u32>(0u, arg_1.a, 74099u), _wgslsmith_clamp_vec3_u32(vec3<u32>(115514u, arg_1.a, 1u), vec3<u32>(4294967295u, 38912u, 74256u), vec3<u32>(20186u, 67956u, u_input.b)))) ^ _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(u_input.b, 1u, 57421u), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 4u)], arg_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_1.a, u_input.b), vec3<u32>(4294967295u, 1u, arg_1.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, 8361u, arg_1.a), vec3<u32>(0u, u_input.b, 15228u) & vec3<u32>(5747u, arg_1.a, 4294967295u))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = false;
    var var_3 = Struct_1(arg_1.a, _wgslsmith_dot_vec2_i32(~u_input.a.yx | ~u_input.a.xw, select(min(-vec2<i32>(18i, u_input.a.x), vec2<i32>(u_input.a.x, arg_1.b)), -abs(u_input.a.zz), !var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -278f)) * _wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(ceil(global3.x))))));
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a >> ((u_input.b << (var_0.x % 32u)) % 32u), ~var_3.a, arg_1.a, 36970u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~var_3.a, ~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 18411u), vec2<u32>(var_3.a, 0u)), ~var_0.x), ~vec4<u32>(1u, 0u, var_0.x, 117204u)));
    return global0[_wgslsmith_index_u32(u_input.b, 8u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = func_1(_wgslsmith_div_u32(u_input.b, u_input.b) != ~1u, Struct_1(~(~u_input.b), arg_1.b, func_1(global1[_wgslsmith_index_u32(u_input.b, 4u)], arg_0).c));
    return u_input.a.yyw;
}

fn func_6(arg_0: vec3<i32>, arg_1: bool) -> StorageBuffer {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(arg_0.x, 1i), u_input.a.x, arg_0.x);
    var var_1 = u_input.b < 51113u;
    global4 = global3.x;
    let var_2 = select(select(vec3<bool>(!global1[_wgslsmith_index_u32(func_4(vec3<u32>(4294967295u, 3001u, u_input.b), vec4<f32>(global3.x, -761f, global3.x, -709f), Struct_1(u_input.b, -28055i, global3.x), vec3<u32>(u_input.b, u_input.b, 50476u)).x, 4u)], !(false & global1[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_mod_i32(-26794i, -2147483647i) < max(arg_0.x, 2147483647i)), !(!(!vec3<bool>(arg_1, true, true))), false), !vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, arg_1), true))), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(select(-1113f, global3.x, global1[_wgslsmith_index_u32(u_input.b, 4u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f)))) * 2122f);
    return StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), global3.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(987f, -1592f), vec2<f32>(562f, global3.x)) - vec2<f32>(-461f, _wgslsmith_f_op_f32(1000f + global3.x)))), vec3<i32>(-func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 20u)], Struct_1(1u, 1747i, var_3), ~vec4<u32>(12882u, 1259u, u_input.b, 0u)), u_input.a.x, -3518i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + vec2<f32>(global3.x, -321f)) + _wgslsmith_f_op_vec2_f32(abs(global3.yx)))) * global3.yz), firstTrailingBit(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -1313f;
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = func_6(func_5(global0[_wgslsmith_index_u32(~(1u & u_input.b) | ~u_input.b, 8u)], func_1(u_input.a.x >= 20143i, Struct_1(_wgslsmith_mult_u32(u_input.b, 4388u), ~u_input.a.x, 1868f))), false);
}

