struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 3010i, 17606i, -19572i);

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 15> = array<u32, 15>(0u, 9160u, 23221u, 0u, 81923u, 96155u, 67470u, 4294967295u, 0u, 6577u, 0u, 1u, 28652u, 16947u, 29098u);

var<private> global4: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = arg_0.b.c;
    let var_1 = Struct_4(all(select(!vec3<bool>(true, var_0.x, true), !select(arg_0.b.c, arg_0.b.c, false), false)), arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))))))));
    let var_2 = firstTrailingBit(vec4<i32>(arg_0.b.b.x, ~(~_wgslsmith_dot_vec2_i32(global2.zz, vec2<i32>(global2.x, 28497i))), var_1.b.b.x, max(-2147483647i, 28463i)));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global3[_wgslsmith_index_u32(10769u, 15u)], 1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)])), ~vec4<u32>(4294967295u, 0u, u_input.d, global3[_wgslsmith_index_u32(1u, 15u)]) | ~vec4<u32>(var_1.b.d.x, arg_0.b.d.x, 12562u, global3[_wgslsmith_index_u32(arg_0.b.d.x, 15u)])), ~reverseBits(13938u) ^ _wgslsmith_div_u32(6098u, arg_0.b.d.x)), ~firstLeadingBit(~max(1u, arg_0.b.a)));
    let var_4 = Struct_3(~firstLeadingBit(~vec3<u32>(40800u, 4294967295u, 1u)), firstLeadingBit(i32(-1i) * -2147483647i));
    return vec4<u32>(select(arg_0.b.a, 30338u, _wgslsmith_f_op_f32(1057f + _wgslsmith_div_f32(var_1.c, 1104f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.c, var_1.c))))), 4294967295u, ~u_input.d, 17205u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = ~arg_1.a;
    var var_1 = vec2<f32>(-346f, 174f);
    var var_2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(min(var_0.x, u_input.d), firstTrailingBit(4294967295u), _wgslsmith_sub_u32(arg_1.a.x, 23962u), arg_3.b.a >> (1u % 32u)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(55890u, arg_1.a.x, global3[_wgslsmith_index_u32(61878u, 15u)], 0u), vec4<u32>(4294967295u, arg_3.b.d.x, 1u, var_0.x)), ~vec4<u32>(22503u, arg_1.a.x, var_0.x, u_input.d)) % vec4<u32>(32u)), ~select(func_3(Struct_2(arg_3.c, Struct_1(4294967295u, vec4<i32>(-42600i, 65812i, arg_3.b.b.x, arg_1.b), arg_3.b.c, var_0), vec2<f32>(var_1.x, arg_3.c))), ~vec4<u32>(arg_1.a.x, 4294967295u, u_input.d, arg_3.b.d.x), vec4<bool>(arg_3.a, arg_3.a, false, true)));
    global3 = array<u32, 15>();
    var var_3 = Struct_4(any(select(select(!arg_3.b.c.yx, !arg_3.b.c.zy, arg_3.b.c.zy), vec2<bool>(any(vec4<bool>(false, arg_3.a, false, false)), all(vec4<bool>(arg_3.b.c.x, arg_3.a, true, false))), true)), arg_3.b, _wgslsmith_div_f32(317f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f + 2526f) * _wgslsmith_f_op_f32(max(arg_3.c, -1300f))), arg_3.c)));
    return Struct_1(~var_3.b.a << (~4294967295u % 32u), min(u_input.b, max(arg_3.b.b, firstLeadingBit(arg_3.b.b << (vec4<u32>(var_3.b.a, u_input.d, var_0.x, arg_1.a.x) % vec4<u32>(32u))))), vec3<bool>(false, !(4294967295u != (u_input.d >> (1u % 32u))), true), vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(45141u, arg_3.b.d.x) >> (~0u % 32u)), ~0u, 0u));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global4 = 266f;
    var var_0 = Struct_2(arg_0.c, Struct_1(~0u, vec4<i32>(-1i) * -(arg_0.b.b << (vec4<u32>(u_input.d, global3[_wgslsmith_index_u32(arg_0.b.a, 15u)], 4294967295u, arg_0.b.d.x) % vec4<u32>(32u))), select(!(!arg_0.b.c), !(!arg_0.b.c), false), vec3<u32>(u_input.d, ~(~4115u), 28530u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, arg_0.c)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(328f, arg_0.c), vec2<f32>(389f, arg_0.c)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.c, arg_0.c)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(-685f, -444f)))));
    global0 = array<i32, 5>();
    var var_1 = Struct_3(~_wgslsmith_mod_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(0u, 15u)], 29462u), vec3<u32>(0u, arg_0.b.a, global3[_wgslsmith_index_u32(var_0.b.d.x, 15u)]))), reverseBits(_wgslsmith_div_vec3_u32(arg_0.b.d, vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], var_0.b.a, 0u)))), _wgslsmith_mod_i32(-1i, global2.x) << ((60459u | _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(21106u, 15u)], 57777u, 1u, 3216u), vec4<u32>(92602u, arg_0.b.a, 4294967295u, global3[_wgslsmith_index_u32(22537u, 15u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(353u, 5644u, 0u, arg_0.b.a), vec4<u32>(4294967295u, 4294967295u, 70940u, 0u)))) % 32u));
    global2 = select(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(~u_input.b, u_input.b)), -abs(vec4<i32>(global1.x, arg_0.b.b.x, -1i, -2147483647i)) ^ (_wgslsmith_clamp_vec4_i32(var_0.b.b, vec4<i32>(2147483647i, 2147483647i, u_input.a, 1i), vec4<i32>(var_0.b.b.x, 2147483647i, var_0.b.b.x, var_1.b)) | ~vec4<i32>(2147483647i, 1i, 45038i, arg_0.b.b.x))), u_input.b, !vec4<bool>(true, false, true, !func_2(vec2<i32>(arg_0.b.b.x, var_1.b), Struct_3(vec3<u32>(u_input.d, arg_0.b.a, u_input.d), var_1.b), vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.a, 15u)], 5u)], -1i, var_1.b, global0[_wgslsmith_index_u32(arg_0.b.a, 5u)]), arg_0).c.x));
    return Struct_3(var_0.b.d, _wgslsmith_mult_i32(arg_0.b.b.x, func_2(vec2<i32>(-58595i, ~5067i), Struct_3(_wgslsmith_mult_vec3_u32(var_0.b.d, vec3<u32>(39946u, 4294967295u, var_0.b.d.x)), _wgslsmith_dot_vec2_i32(global2.yy, vec2<i32>(-6904i, global1.x))), _wgslsmith_add_vec4_i32(u_input.b, firstLeadingBit(arg_0.b.b)), Struct_4(true, func_2(vec2<i32>(arg_0.b.b.x, 28418i), Struct_3(var_0.b.d, var_1.b), arg_0.b.b, Struct_4(false, var_0.b, var_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c))).b.x));
}

fn func_1() -> Struct_3 {
    global4 = 1154f;
    return func_4(Struct_4(true, func_2(_wgslsmith_sub_vec2_i32(global1.xy, vec2<i32>(global2.x, -7214i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(-25245i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], 11865i)), Struct_3(firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(42376u, 15u)], global3[_wgslsmith_index_u32(107224u, 15u)], u_input.d)), 1i), vec4<i32>(~(-47615i), -16986i, -43830i, -1i & global1.x), Struct_4(91355u < u_input.d, Struct_1(u_input.d, u_input.b, vec3<bool>(false, true, true), vec3<u32>(0u, u_input.d, 28242u)), _wgslsmith_f_op_f32(268f - -480f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(806f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(673f, Struct_1(4294967295u, -(~u_input.b | (u_input.b >> (vec4<u32>(u_input.d, global3[_wgslsmith_index_u32(u_input.d, 15u)], 36797u, u_input.d) % vec4<u32>(32u)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<u32>(40203u, ~0u, ~u_input.d), abs(vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 15u)], 15u)])), false)), vec2<f32>(722f, _wgslsmith_f_op_f32(-1f)));
    let var_1 = func_1();
    let var_2 = ~(-vec4<i32>(global2.x, _wgslsmith_mult_i32(-var_1.b, i32(-1i) * -42722i), -u_input.a, countOneBits(2147483647i << (var_1.a.x % 32u))));
    var var_3 = var_0.b;
    var var_4 = func_1();
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 549f));
    var var_6 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1000f + var_0.c.x), _wgslsmith_f_op_f32(-875f - -1042f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.c.x, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -269f, 1050f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2177f, var_0.a, var_0.c.x)) - vec3<f32>(var_0.a, -1065f, 905f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1212f, -860f) * vec4<f32>(2077f, var_0.a, -1927f, -547f)) + vec4<f32>(-749f, 784f, -1809f, 614f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, 352f, -711f, var_0.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -332f, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, var_0.a, 1109f, var_0.a))), select(vec4<bool>(var_3.c.x, var_0.b.c.x, false, var_3.c.x), vec4<bool>(var_0.b.c.x, false, false, var_3.c.x), select(vec4<bool>(false, true, var_3.c.x, var_3.c.x), vec4<bool>(true, true, var_3.c.x, false), vec4<bool>(var_3.c.x, false, var_0.b.c.x, var_0.b.c.x)))))));
}

