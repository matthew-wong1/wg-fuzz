struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: Struct_1 = Struct_1(-1374f, vec4<u32>(0u, 4294967295u, 0u, 0u));

var<private> global2: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(-544f, arg_3.b);
    let var_1 = Struct_2(~(~5885u), min(vec4<u32>(~global1.b.x, ~20826u, 92672u, ~_wgslsmith_dot_vec3_u32(var_0.b.ywx, var_0.b.xwx)), ~(~(global1.b & arg_3.b))), firstLeadingBit(global1.b.xz), select(select(select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), select(!vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(true, false, true), vec3<bool>(arg_2, arg_2, false), arg_2), arg_2 & arg_2), !arg_2), select(!select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, true), true), select(!vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, arg_2, arg_2), any(vec2<bool>(arg_2, arg_2))), true), !(true | arg_2)));
    global2 = ~var_0.b.x;
    global2 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2445f, arg_3.a, arg_3.a), vec3<f32>(-1000f, -642f, arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(796f, global1.a, global1.a)), arg_2 && true))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-992f, _wgslsmith_f_op_f32(554f + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -312f)))))));
    return 1u;
}

fn func_2() -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-421f)) + _wgslsmith_f_op_f32(max(global1.a, 1252f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(912f + -1071f)))), vec4<u32>(_wgslsmith_mult_u32(countOneBits(~0u), global1.b.x), ~(~1u), global1.b.x, max(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, global1.b.x), global1.b.x >> (0u % 32u)), func_3(Struct_1(184f, vec4<u32>(global1.b.x, 0u, 4294967295u, 37950u)), select(global1.b.x, global1.b.x, true), all(vec2<bool>(false, false)), Struct_1(-750f, global0[_wgslsmith_index_u32(37923u, 22u)])))));
    global2 = 38885u;
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), _wgslsmith_mult_vec3_u32(global1.b.zwy, global1.b.yww)), ~_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(1u >> (max(global1.b.x, global1.b.x) % 32u), 22u)], ~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(49203u, 22u)], global0[_wgslsmith_index_u32(global1.b.x, 22u)])), ~global1.b.wy, select(select(vec3<bool>(all(vec2<bool>(false, false)), true, all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), true), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global1 = Struct_1(1705f, max(~max(vec4<u32>(var_0.a, 0u, 5759u, 0u), vec4<u32>(var_0.c.x, 67196u, 4294967295u, 4294967295u)), vec4<u32>(var_0.c.x, global1.b.x, 62108u, _wgslsmith_mod_u32(109295u, global1.b.x))) >> (vec4<u32>(18085u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(58866u, 0u), var_0.b.xw)), 0u, _wgslsmith_sub_u32(countOneBits(var_0.c.x), _wgslsmith_clamp_u32(global1.b.x, var_0.b.x, var_0.c.x))) % vec4<u32>(32u)));
    var var_1 = ~u_input.a.yz;
    return var_0.b.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 22>();
    var var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i & u_input.a.x, 1i, i32(-1i) * -33480i, abs(u_input.a.x)), vec4<i32>(arg_1.x, 29740i, u_input.a.x, arg_1.x)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, arg_1.x, -26005i), vec4<i32>(45434i, -2147483647i, arg_1.x, 1i), false), ~vec4<i32>(arg_1.x, -30408i, u_input.a.x, 0i)), -2147483647i), 1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(39003i, -4000i, 2147483647i), firstTrailingBit(min(u_input.a, u_input.a))), arg_1.x));
    global0 = array<vec4<u32>, 22>();
    var var_1 = firstTrailingBit(~(~vec4<i32>(firstTrailingBit(40669i), u_input.a.x & u_input.a.x, u_input.a.x, arg_1.x)));
    let var_2 = vec4<f32>(1380f, global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.a))))))), 1000f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1125f)))), global0[_wgslsmith_index_u32(92766u, 22u)]);
}

fn func_1() -> Struct_2 {
    global2 = global1.b.x | ~(~47602u);
    var var_0 = func_4((vec3<u32>(func_2(), 33552u >> (global1.b.x % 32u), ~global1.b.x) | global1.b.zww) & vec3<u32>(func_3(Struct_1(-1062f, vec4<u32>(global1.b.x, global1.b.x, 4294967295u, 2507u)), global1.b.x, true, Struct_1(global1.a, vec4<u32>(global1.b.x, 67135u, 0u, 13838u))) >> (global1.b.x % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(40798u, 25948u), global1.b.ww), _wgslsmith_sub_vec2_u32(global1.b.zx, vec2<u32>(1u, 37005u))), reverseBits(~1u)), ~vec2<i32>(_wgslsmith_mult_i32(~(-25956i), u_input.a.x), u_input.a.x));
    let var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), any(vec3<bool>(true, true, false)), false, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), vec4<bool>(_wgslsmith_f_op_f32(ceil(-506f)) >= -282f, all(vec2<bool>(true, false)), !all(vec4<bool>(false, false, false, true)), (u_input.a.x > -2147483647i) & true), !any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)));
    var var_2 = global1.b.yxw;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -712f))) * _wgslsmith_f_op_f32(f32(-1f) * -1660f));
    return Struct_2(global1.b.x, vec4<u32>(4294967295u, 1u, 4294967295u, _wgslsmith_sub_u32(var_2.x, var_2.x)), ~(~countOneBits(global1.b.xw) & max(vec2<u32>(4294967295u, 8873u), global1.b.zw)), select(select(vec3<bool>(true, true, true), select(!vec3<bool>(var_1.x, true, var_1.x), var_1.zzx, var_2.x <= var_2.x), var_1.x), !(!var_1.wyy), !vec3<bool>(false, !var_1.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true || (u_input.a.x > 1i), u_input.a.x <= _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(10460i, u_input.a.x)));
    let var_1 = 4294967295u;
    global0 = array<vec4<u32>, 22>();
    var var_2 = func_1();
    global2 = 18610u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a), vec3<f32>(global1.a, global1.a, global1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a)))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, max(_wgslsmith_dot_vec2_u32(global1.b.xz, var_2.c), _wgslsmith_mod_u32(global1.b.x, global1.b.x))), vec2<u32>(var_1, var_1)), u_input.a.zy, func_1().c.x);
}

