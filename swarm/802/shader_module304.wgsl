struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 2>;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(global0.zz, _wgslsmith_f_op_vec2_f32(step(global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 323f) - vec2<f32>(global0.x, global0.x)))))));
    let var_1 = global1[_wgslsmith_index_u32(13114u, 2u)];
    var var_2 = 1678f;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1002f, var_0.x))), _wgslsmith_f_op_f32(step(-633f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -119f))));
    var var_3 = ~global2.zz;
    return true;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = Struct_3(arg_2.c.c.xzy, arg_2.a.b.x && arg_2.c.a.x, ~32249u);
    var var_1 = Struct_3(vec3<bool>(func_2(arg_2), var_0.b, arg_2.a.a.x), all(select(var_0.a.yx, select(arg_0.a.xz, arg_2.c.a.xz, arg_2.d.c.wz), vec2<bool>(var_0.a.x, arg_0.b))), 0u);
    let var_2 = arg_2;
    global2 = min(vec3<u32>(~(~arg_1), _wgslsmith_clamp_u32(0u, 1u, ~arg_0.c) | ~max(u_input.a, 12116u), arg_0.c), vec3<u32>(~var_0.c, ~(~(88317u ^ arg_0.c)), ~(~min(var_2.b.x, 80406u))));
    var var_3 = var_0;
    return !any(arg_2.a.b);
}

fn func_1() -> vec3<f32> {
    var var_0 = 4294967295u;
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, true, any(vec4<bool>(true, true, false, false))), vec4<bool>(false, false, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(func_2(Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec3<u32>(51532u, 25767u, global1[_wgslsmith_index_u32(26379u, 2u)]), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec2<i32>(-31805i, -1i))), !(global0.x > 1263f), true, true)), vec3<u32>(~abs(_wgslsmith_mult_u32(0u, 18650u)), _wgslsmith_mod_u32(~4294967295u, global1[_wgslsmith_index_u32(~1u, 2u)]) & countOneBits(~669u), _wgslsmith_dot_vec2_u32(~vec2<u32>(7815u, u_input.b), global2.yx)), Struct_1(vec3<bool>(true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), func_3(Struct_3(vec3<bool>(false, false, false), false, 28298u), global2.x, Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec3<u32>(4294967295u, u_input.a, global2.x), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec2<i32>(-4034i, -2147483647i)), global0.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(abs(-1287f)) != global0.x)), Struct_1(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), !any(vec2<bool>(false, true))), vec4<bool>(func_3(Struct_3(vec3<bool>(true, true, true), false, 95356u), u_input.b, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec3<u32>(4294967295u, u_input.c, global1[_wgslsmith_index_u32(2904u, 2u)]), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec2<i32>(62596i, 18920i)), -1675f), false, false, true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, false), false)), countOneBits(countOneBits(vec2<i32>(-13995i, 0i) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))));
    global2 = ~(~vec3<u32>(var_1.b.x, countOneBits(_wgslsmith_mult_u32(global2.x, 6415u)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.b)), vec2<u32>(u_input.c, 107355u))));
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(true, true & var_1.c.c.x, -2147483647i <= var_1.e.x), vec3<bool>(all(vec2<bool>(var_1.d.b.x, var_1.a.a.x)), true, var_1.d.b.x), true), select(!(!var_1.d.b), select(select(vec4<bool>(false, var_1.a.c.x, true, var_1.c.b.x), vec4<bool>(var_1.a.c.x, true, true, false), var_1.c.c), !vec4<bool>(var_1.a.b.x, true, true, var_1.c.b.x), 1234f != global0.x), select(select(var_1.a.c, vec4<bool>(var_1.a.c.x, var_1.a.b.x, var_1.a.c.x, true), var_1.a.b), select(var_1.a.b, var_1.a.c, var_1.c.b.x), !vec4<bool>(var_1.c.b.x, var_1.d.b.x, var_1.d.a.x, var_1.a.a.x))), !select(vec4<bool>(var_1.d.c.x, false, true, var_1.c.c.x), var_1.d.c, vec4<bool>(var_1.a.a.x, false, false, true))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(~var_1.b), select(~var_1.b, _wgslsmith_clamp_vec3_u32(var_1.b, vec3<u32>(17802u, 12428u, global2.x), var_1.b), all(var_1.c.c.xw))), _wgslsmith_div_vec3_u32(var_1.b, ~var_1.b)), Struct_1(vec3<bool>(func_3(Struct_3(vec3<bool>(var_1.d.b.x, var_1.c.c.x, false), false, 4294967295u), ~7630u, Struct_2(Struct_1(vec3<bool>(true, false, var_1.c.a.x), var_1.c.b, var_1.a.b), var_1.b, Struct_1(var_1.d.a, vec4<bool>(false, var_1.d.b.x, var_1.a.a.x, var_1.c.b.x), vec4<bool>(var_1.c.a.x, true, var_1.a.a.x, true)), var_1.a, var_1.e), _wgslsmith_f_op_f32(global0.x - 204f)), all(var_1.c.c) || (global2.x > 17374u), false), !vec4<bool>(var_1.a.b.x, true, func_3(Struct_3(var_1.d.b.zzw, false, 1u), u_input.b, Struct_2(Struct_1(vec3<bool>(var_1.c.b.x, var_1.a.a.x, var_1.d.a.x), var_1.c.c, var_1.d.c), var_1.b, var_1.d, Struct_1(var_1.d.b.yxz, var_1.a.c, vec4<bool>(false, true, false, false)), vec2<i32>(var_1.e.x, -1i)), global0.x), !var_1.c.c.x), var_1.c.b), Struct_1(vec3<bool>(select(var_1.d.b.x, var_1.c.a.x == var_1.a.b.x, !var_1.c.b.x), true, all(vec4<bool>(var_1.d.c.x, var_1.a.b.x, var_1.d.a.x, true))), vec4<bool>(!var_1.a.b.x, _wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(-global0.x), false, !func_3(Struct_3(vec3<bool>(true, false, true), true, global1[_wgslsmith_index_u32(69455u, 2u)]), global2.x, Struct_2(Struct_1(var_1.a.b.xwz, var_1.a.b, vec4<bool>(false, var_1.a.a.x, var_1.c.c.x, false)), var_1.b, var_1.a, Struct_1(var_1.a.c.xxy, var_1.c.c, var_1.d.b), vec2<i32>(var_1.e.x, -62451i)), global0.x)), vec4<bool>(var_1.a.c.x, var_1.d.a.x, true, true)), vec2<i32>(var_1.e.x >> (u_input.a % 32u), _wgslsmith_add_i32(-1i, var_1.e.x)) ^ max(~_wgslsmith_sub_vec2_i32(var_1.e, var_1.e), var_1.e));
    var var_3 = 0u;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global0.x)), 211f, -1696f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 2>();
    global0 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_0 = vec3<bool>(func_3(Struct_3(vec3<bool>(true, func_3(Struct_3(vec3<bool>(false, false, false), true, 14745u), global2.x, Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec3<u32>(global1[_wgslsmith_index_u32(8361u, 2u)], 1u, 1u), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec2<i32>(1i, -2147483647i)), global0.x), all(vec2<bool>(false, false))), 464f <= _wgslsmith_f_op_f32(1000f + global0.x), abs(1u)), global2.x, Struct_2(Struct_1(vec3<bool>(false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, true, true)), vec3<u32>(1u, u_input.b, 19444u), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), abs(vec2<i32>(-1i, 2147483647i)) >> (max(global2.xx, global2.yx) % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.x, -893f)), _wgslsmith_f_op_f32(ceil(-1473f)), countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]) >= ~u_input.a))), (_wgslsmith_f_op_vec3_f32(func_1()).x == 530f) && !(!any(vec3<bool>(false, true, true))), func_3(Struct_3(vec3<bool>(true, true, any(vec3<bool>(false, false, false))), true, select(countOneBits(4294967295u), abs(4294967295u), true)), global2.x, Struct_2(Struct_1(vec3<bool>(true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 4294967295u, u_input.c) >> (vec3<u32>(global2.x, 4294967295u, 19455u) % vec3<u32>(32u)), vec3<u32>(109571u, 25674u, global1[_wgslsmith_index_u32(1u, 2u)])), Struct_1(vec3<bool>(true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), -(~vec2<i32>(1i, 1i))), global0.x));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, _wgslsmith_div_u32(83553u, 48421u), ~min(23509u, global1[_wgslsmith_index_u32(28793u, 2u)]), 12788u), firstTrailingBit(abs(~vec4<u32>(1u, 4294967295u, 36172u, 4294967295u)))) & (~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(24731u, global2.x, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 2u)], 2u)]), vec4<u32>(global2.x, global1[_wgslsmith_index_u32(global2.x, 2u)], u_input.c, 36935u), vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], 104883u)), vec4<u32>(global2.x, u_input.b, u_input.c, global1[_wgslsmith_index_u32(u_input.b, 2u)]) ^ vec4<u32>(18954u, u_input.c, global1[_wgslsmith_index_u32(u_input.b, 2u)], 1u)) & ~firstTrailingBit(vec4<u32>(global2.x, 0u, global2.x, 5794u)));
    let var_2 = Struct_3(select(vec3<bool>(false, var_0.x, any(vec4<bool>(var_0.x, false, true, var_0.x))), vec3<bool>(any(!var_0.yz), true, true), select(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, true)), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -26449i) > firstLeadingBit(2147483647i))), var_0.x, _wgslsmith_add_u32((global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(68536u, 1u), 2u)] ^ u_input.b) >> (~select(5875u, global2.x, false) % 32u), 80u));
    var var_3 = -_wgslsmith_sub_i32(firstLeadingBit(1i), ~0i);
    global1 = array<u32, 2>();
    var var_4 = Struct_2(Struct_1(var_2.a, vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-8369i, -2147483647i), vec2<i32>(-63978i, -33863i)) >= select(-55952i, 1i, true), var_2.a.x, var_2.b, false), select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_2.a.x, false, true, true)), select(!vec4<bool>(true, var_2.b, true, var_0.x), select(vec4<bool>(var_2.a.x, true, var_2.b, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), false), var_2.c >= u_input.b), vec4<bool>(select(true, false, false), func_2(Struct_2(Struct_1(var_2.a, vec4<bool>(true, var_0.x, var_2.a.x, false), vec4<bool>(false, var_0.x, false, false)), var_1.ywy, Struct_1(vec3<bool>(var_2.b, true, true), vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, var_2.a.x, var_2.a.x, var_2.a.x)), Struct_1(vec3<bool>(var_0.x, true, var_2.b), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), vec2<i32>(-2147483647i, -11335i))), var_2.a.x, 1402f > global0.x))), vec3<u32>(var_2.c, _wgslsmith_div_u32(741u, abs(~var_2.c)), select(~1u, var_1.x, true) >> (var_1.x % 32u)), Struct_1(select(vec3<bool>(true, !var_0.x, !var_2.a.x), var_2.a, !var_0.x | var_0.x), select(select(!vec4<bool>(true, false, var_2.a.x, false), select(vec4<bool>(var_0.x, true, false, var_2.b), vec4<bool>(true, var_0.x, true, true), true), !vec4<bool>(true, var_0.x, true, true)), vec4<bool>(var_0.x, any(vec4<bool>(var_0.x, false, true, var_2.b)), var_2.b, true), false), select(vec4<bool>(true, 45355u >= global2.x, true, all(var_0.xy)), !(!vec4<bool>(var_2.b, var_2.a.x, var_2.a.x, var_0.x)), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, var_0.x, var_2.b, false), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), Struct_1(!(!vec3<bool>(true, true, var_0.x)), !vec4<bool>(any(vec4<bool>(var_2.b, var_2.a.x, true, true)), var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, true)), select(countOneBits(select(vec2<i32>(8805i, 17599i), vec2<i32>(-1i, 26745i), vec2<bool>(var_2.b, var_0.x))) ^ vec2<i32>(_wgslsmith_div_i32(-26499i, 2147483647i), ~(-1i)), vec2<i32>(countOneBits(abs(2708i)), _wgslsmith_sub_i32(countOneBits(-2687i), 0i)), !(!var_0.x && !var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1293f);
}

