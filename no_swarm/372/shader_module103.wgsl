struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<u32, 1> = array<u32, 1>(73128u);

var<private> global3: f32 = 1231f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<f32> {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.ww), -28077i, -14957i), vec4<i32>(u_input.a.x, 773i, _wgslsmith_clamp_i32(~(~u_input.a.x), u_input.a.x, abs(_wgslsmith_div_i32(0i, 27730i))), -16109i));
    global1 = array<Struct_1, 13>();
    var var_1 = !vec2<bool>(!all(!vec4<bool>(true, global0.b, global0.c, false)), false);
    var var_2 = select(!vec2<bool>(!global0.b, !(!var_1.x)), select(vec2<bool>(global0.c && var_1.x, var_1.x), vec2<bool>(true, ~(-48576i) != ~u_input.a.x), any(vec2<bool>(true, any(vec3<bool>(global0.c, var_1.x, true))))), select(vec2<bool>(global0.c == false, all(vec2<bool>(global0.c, var_1.x)) && !var_1.x), select(vec2<bool>(10344i <= u_input.a.x, var_1.x), vec2<bool>(global0.a.x == 781f, !global0.b), global0.c || global0.b), vec2<bool>(global0.b, true & (1u < global2[_wgslsmith_index_u32(0u, 1u)]))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -1000f), global0.a)), global0.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0.a)), true, all(!vec3<bool>(true, global0.b, global0.c)));
    var var_1 = global0.a.x;
    global2 = array<u32, 1>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), true, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), _wgslsmith_mod_i32(u_input.a.x, 21156i)) <= -2499i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + var_0.a), var_0.a, true)), var_0.b, global0.b);
    return Struct_1(global0.a, (max(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u), 9410u) << (104424u % 32u)) >= select(30192u, ~firstTrailingBit(116843u), false), true);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<f32> {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - arg_2.a.x)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))))) * arg_1.x);
    let var_0 = func_2();
    let var_1 = !all(vec4<bool>(select(global0.c, true, global0.b), false, all(vec2<bool>(true, arg_2.b)), global0.c)) & arg_0;
    let var_2 = func_2();
    global2 = array<u32, 1>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, _wgslsmith_f_op_f32(select(-2074f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1215f - arg_1.x))), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1161f)) * arg_1.x)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, -1468f, -1038f)), var_2.a))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = func_2();
    let var_1 = arg_2.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, 1f, _wgslsmith_f_op_f32(select(1000f, 2288f, false)), -226f))), vec4<f32>(-937f, arg_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * arg_0.a.x) * global0.a.x), -1659f)), _wgslsmith_f_op_f32(f32(-1f) * -842f))));
    global1 = array<Struct_1, 13>();
    var var_3 = !vec2<bool>(select(func_2().c & true, true, select(all(vec3<bool>(var_0.c, true, true)), global0.b, select(false, global0.c, false))), false);
    return global2[_wgslsmith_index_u32(select(36779u, 16234u, !(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 1u)] | 4294967295u) <= global2[_wgslsmith_index_u32(~4294967295u, 1u)])), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(true, _wgslsmith_f_op_f32(579f + global0.a.x) != 1398f, global0.c));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1750f + -671f) - _wgslsmith_f_op_f32(-global0.a.x)))) + global0.a.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-121f)));
    var var_2 = firstTrailingBit(vec3<u32>(max(global2[_wgslsmith_index_u32(1u, 1u)], 0u) | (4294967295u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13669u, 1u)], 1u)]), 34812u, max(~33972u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38455u, 1u)], 1u)], 1u)], 1u)], 1u)])) >> ((~_wgslsmith_sub_vec3_u32(vec3<u32>(152432u, 52293u, global2[_wgslsmith_index_u32(22332u, 1u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 1u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)])) << (vec3<u32>(18924u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)] % 32u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13598u, 1u)], 1u)], 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = global1[_wgslsmith_index_u32(select((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u >> (global2[_wgslsmith_index_u32(74219u, 1u)] % 32u), 1u)], 1u)], 1u)] << (select(var_2.x, var_2.x, global0.b) % 32u)) | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x & 3710u, ~global2[_wgslsmith_index_u32(var_2.x, 1u)]), 1u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.x, ~_wgslsmith_sub_u32(25335u, global2[_wgslsmith_index_u32(0u, 1u)])), 1u)], any(select(select(var_0.yy, var_0.xx, false), select(vec2<bool>(var_0.x, global0.c), var_0.zz, global0.c), global2[_wgslsmith_index_u32(var_2.x, 1u)] >= global2[_wgslsmith_index_u32(var_2.x, 1u)]))) | ~countOneBits(16999u), 13u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(global0.a));
    global2 = array<u32, 1>();
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.x, global0.a.x, 1032f), vec3<f32>(-1539f, var_3.a.x, -755f)))) + var_4));
    var var_6 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f)), _wgslsmith_add_u32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(false, vec4<f32>(var_3.a.x, 1000f, var_3.a.x, global0.a.x), Struct_1(vec3<f32>(var_5.x, var_3.a.x, global0.a.x), var_0.x, true))), !global0.c, true), func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, var_4.x, -194f)), true, true)), _wgslsmith_mult_u32(var_2.x ^ ~1u, var_2.x >> (1u % 32u))), 13078i, _wgslsmith_f_op_f32(-var_3.a.x));
}

