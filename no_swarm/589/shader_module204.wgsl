struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(163f, vec3<i32>(2147483647i, 2147483647i, 5492i), -1435f), Struct_1(-1239f, vec3<i32>(0i, 12500i, 5433i), 1179f), Struct_1(360f, vec3<i32>(1i, 24748i, -1i), 983f), Struct_1(-195f, vec3<i32>(-524i, 0i, 0i), 122f), Struct_1(238f, vec3<i32>(-32458i, -18904i, 2147483647i), -1508f), Struct_1(1021f, vec3<i32>(-18899i, -1i, -441i), 769f), Struct_1(-540f, vec3<i32>(28397i, 1i, 13744i), -508f), Struct_1(1306f, vec3<i32>(1i, 0i, 0i), -322f), Struct_1(1115f, vec3<i32>(16023i, -1i, -30007i), -445f), Struct_1(-423f, vec3<i32>(-1985i, 0i, -30298i), -688f), Struct_1(-276f, vec3<i32>(1i, -20439i, 1i), -1248f), Struct_1(745f, vec3<i32>(-1i, 1i, 1i), -1646f), Struct_1(-465f, vec3<i32>(1i, -14740i, -53719i), -1000f), Struct_1(317f, vec3<i32>(-1i, -5703i, 15164i), 1000f), Struct_1(870f, vec3<i32>(-1i, 2147483647i, 2147483647i), 504f), Struct_1(1380f, vec3<i32>(i32(-2147483648), 2147483647i, 22823i), -663f), Struct_1(-360f, vec3<i32>(1i, 26863i, 1i), 928f), Struct_1(-1000f, vec3<i32>(9934i, 2257i, 6379i), 893f), Struct_1(-785f, vec3<i32>(3354i, -50662i, i32(-2147483648)), -1000f), Struct_1(-1441f, vec3<i32>(-26253i, 0i, 1i), -1000f), Struct_1(2198f, vec3<i32>(-991i, 33807i, -31789i), -1158f), Struct_1(-1191f, vec3<i32>(5323i, 2147483647i, 1i), 505f), Struct_1(312f, vec3<i32>(1i, -16702i, 18314i), 116f), Struct_1(1018f, vec3<i32>(-41558i, -13766i, 2147483647i), 252f), Struct_1(-1421f, vec3<i32>(-17921i, 61687i, i32(-2147483648)), 903f), Struct_1(-2165f, vec3<i32>(1i, 17445i, 0i), -1000f), Struct_1(-405f, vec3<i32>(-17542i, i32(-2147483648), -10238i), 1541f), Struct_1(-1294f, vec3<i32>(2147483647i, 0i, 1i), 199f));

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = ~abs(_wgslsmith_dot_vec3_u32(max(firstLeadingBit(u_input.a), u_input.a), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) << (u_input.a % vec3<u32>(32u))));
    global1 = array<Struct_1, 28>();
    global0 = array<bool, 31>();
    var var_1 = global1[_wgslsmith_index_u32(~(100186u ^ ~u_input.a.x), 28u)];
    var var_2 = true;
    return 15372u < u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * -2099f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-158f, arg_0.a)))), arg_2)))), -arg_0.b, arg_0.a);
    global2 = var_0.b;
    var var_1 = func_3();
    let var_2 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true, true), vec3<bool>(false, false, true), !global0[_wgslsmith_index_u32(arg_1, 31u)]), !vec3<bool>(true, arg_2, global0[_wgslsmith_index_u32(1u, 31u)]), true), select(!select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, true, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false, true)), vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], false)), true && global0[_wgslsmith_index_u32(u_input.b, 31u)], !arg_2), any(select(vec2<bool>(false, true), vec2<bool>(arg_2, global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(50761u, 31u)])))), !(_wgslsmith_div_f32(-1835f, var_0.a) < _wgslsmith_f_op_f32(-var_0.c))), select(select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(43726u, 31u)]), !vec3<bool>(false, arg_2, arg_2), true), vec3<bool>(arg_2, global0[_wgslsmith_index_u32(1u, 31u)], all(vec3<bool>(false, true, true))), select(vec3<bool>(arg_2, true, false), select(vec3<bool>(true, false, arg_2), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1, 31u)], arg_2), true), !vec3<bool>(arg_2, arg_2, arg_2))), !vec3<bool>(!arg_2, true, func_3()), global0[_wgslsmith_index_u32(~min(u_input.b, arg_1), 31u)] && global0[_wgslsmith_index_u32(u_input.b, 31u)]));
    let var_3 = vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(-1i, 75047i), -2147483647i, -29760i), _wgslsmith_dot_vec2_i32(~var_0.b.zy, -var_0.b.yx) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(46441u, 0u, u_input.b), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_1, 9738u, u_input.a.x))) % 32u), firstTrailingBit(var_0.b.x), -1i) << (vec4<u32>(u_input.b, select(u_input.b, 1u, false), 43067u, _wgslsmith_add_u32(~72791u | u_input.b, u_input.b)) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c))))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, var_3.x, var_3.x, 2147483647i), -select(vec4<i32>(-2147483647i, var_0.b.x, var_0.b.x, arg_0.b.x), vec4<i32>(arg_0.b.x, var_0.b.x, var_3.x, -53915i), global0[_wgslsmith_index_u32(arg_1, 31u)])), global2.x, 27424i), arg_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global2 = _wgslsmith_sub_vec3_i32(arg_0.b, arg_0.b);
    global0 = array<bool, 31>();
    global1 = array<Struct_1, 28>();
    global2 = vec3<i32>(arg_0.b.x, ~arg_0.b.x, 0i);
    let var_0 = _wgslsmith_f_op_f32(arg_0.a + -536f);
    return func_2(Struct_1(arg_0.c, ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, arg_0.b.x), arg_0.b), 1i, -7303i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(144f + -889f)))), 1u, true);
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = ~vec3<u32>(7291u, countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 4294967295u, u_input.b)), ~vec3<u32>(u_input.a.x, 81398u, 0u))), 0u);
    global2 = firstTrailingBit(firstTrailingBit(-vec3<i32>(global2.x, -1i, -25896i) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, 61340u, var_0.x)), ~u_input.a) % vec3<u32>(32u))));
    var var_1 = select(vec2<bool>(any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(80490u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(16242u, 31u)], false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 31u)], true, global0[_wgslsmith_index_u32(0u, 31u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], true, global0[_wgslsmith_index_u32(var_0.x, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], false, false, false))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, countOneBits(4294967295u) >> (~var_0.x % 32u), ~(u_input.a.x & var_0.x)), 31u)]), select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)]))), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(2356u, 31u)]), select(true, false, global2.x < 38513i)), false), (1i << (firstLeadingBit(countOneBits(u_input.a.x)) % 32u)) <= ~(~reverseBits(17159i)));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) * func_1(global1[_wgslsmith_index_u32((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 11245u), vec2<u32>(u_input.b, u_input.a.x)) >> (_wgslsmith_add_u32(var_0.x, 1u) % 32u)) << (4294967295u % 32u), 28u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.c)))))).c);
    return select(firstTrailingBit(~(~firstTrailingBit(vec4<i32>(-44993i, 12083i, 2147483647i, global2.x)))), -(reverseBits(-vec4<i32>(2147483647i, global2.x, 0i, 3691i)) | -(~vec4<i32>(-16990i, global2.x, global2.x, global2.x))), select(vec4<bool>(_wgslsmith_f_op_f32(sign(arg_0.a)) != _wgslsmith_f_op_f32(select(-146f, -1614f, true)), !var_1.x, !var_1.x, !(var_0.x > 24496u)), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(1597u, 31u)], true, var_1.x, global0[_wgslsmith_index_u32(1u, 31u)]))), -(arg_0.b.x & arg_0.b.x) < _wgslsmith_clamp_i32(global2.x, arg_0.b.x, arg_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, !any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false, false)), false);
    let var_1 = global2.x;
    let var_2 = 26492u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -449f);
    var_3 = _wgslsmith_f_op_f32(912f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))));
    var var_4 = var_0.x;
    let var_5 = _wgslsmith_f_op_f32(abs(-1596f));
    global2 = vec3<i32>(-global2.x, 7044i, _wgslsmith_dot_vec4_i32(-func_4(func_1(Struct_1(119f, vec3<i32>(-37814i, global2.x, 5184i), var_5), vec2<f32>(-187f, var_5))), -(vec4<i32>(-1i) * -vec4<i32>(-9497i, global2.x, global2.x, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(5476i, -1i)), 0i), global2.yx), ~_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(5390u, 4294967295u, 34230u, u_input.b))), ~vec4<u32>(var_2, 4294967295u, 152u, 61328u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(366f, var_5), vec2<f32>(var_5, var_5), false)))))));
}

