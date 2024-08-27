struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), -24002i, -21636i)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(2147483647i, -4860i, 0i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 2147483647i, -20496i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, -1i, 19912i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(22104i, 946i, -7393i)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(13007i, -1i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-12977i, i32(-2147483648), 0i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(50768i, -22982i, -1i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, 4487i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(1i, 1i, i32(-2147483648))), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-39899i, 0i, -49612i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, i32(-2147483648), 5626i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, -55566i, -26064i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(48459i, 24633i, 55796i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(9531i, 4962i, 0i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-826i, 38011i, 2147483647i)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(44270i, 21672i, 1773i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, -72896i, 60731i)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-27426i, 1i, 9026i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(12900i, 1i, 0i)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 2147483647i, 34776i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(1i, -47354i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, false), vec3<i32>(8135i, -1582i, 11305i)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(524f, -1538f)) + 1580f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-957f - -170f)))))));
    global1 = array<vec2<f32>, 9>();
    var var_2 = Struct_1(select(vec3<bool>(!arg_2.a.x, global0[_wgslsmith_index_u32(firstLeadingBit(0u), 31u)], true), select(vec3<bool>(arg_1.a.x, global3.x, all(vec2<bool>(true, false))), arg_1.a, !(!arg_1.a.x)), any(!vec3<bool>(arg_2.a.x, false, true))), select(_wgslsmith_clamp_vec3_i32((vec3<i32>(34590i, -1i, arg_1.b.x) | vec3<i32>(arg_2.b.x, 12619i, -23948i)) << (vec3<u32>(u_input.a.x, 26911u, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(2147483647i, 9218i), arg_1.b.x, abs(arg_3.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 11375i, 1i) | vec3<i32>(1i, 0i, arg_3.b.x), arg_1.b, reverseBits(arg_2.b))), vec3<i32>(-reverseBits(-1i), abs(var_0), arg_3.b.x), !select(arg_2.a, !vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, true), vec3<bool>(false, true, false))));
    let var_3 = arg_1;
    return 770f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(max(574f, -1706f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)) - _wgslsmith_f_op_f32(f32(-1f) * -1295f))), _wgslsmith_f_op_f32(select(-1514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(16007u, arg_0, arg_0, global2[_wgslsmith_index_u32(3121u, 11u)]))), any(!vec4<bool>(true, true, arg_0.a.x, true)) && true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -230f, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -575f) + _wgslsmith_f_op_f32(-406f + -530f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-2374f)))), _wgslsmith_f_op_f32(-2377f - _wgslsmith_f_op_f32(ceil(-910f)))))));
    let var_1 = abs(1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0);
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~0u, u_input.a.x), 24u)];
    let var_4 = ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x);
    return Struct_1(vec3<bool>(false, true, !(u_input.a.x == _wgslsmith_div_u32(var_4, u_input.a.x))), reverseBits(arg_0.b ^ -max(var_3.b, vec3<i32>(1i, arg_0.b.x, arg_0.b.x))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global3 = !vec2<bool>(!(!global0[_wgslsmith_index_u32(arg_0 & 1u, 31u)]), false);
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(-1000f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1178f), -928f)) + -1736f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(367f, -915f, -861f, 824f)))))))), true));
    let var_1 = global2[_wgslsmith_index_u32(~4294967295u, 11u)];
    let var_2 = max(~(~vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(54969u, 4294967295u), arg_2.x)), ~u_input.a);
    let var_3 = func_2(global4[_wgslsmith_index_u32(arg_2.x, 24u)]);
    return Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(~0u, 31u)], false, true), -_wgslsmith_mult_vec3_i32(firstLeadingBit(var_1.b), -var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u >> (u_input.a.x % 32u), !(!(!global3.x)), ~(u_input.a.xy & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy)));
    let var_1 = select(vec2<bool>(var_0.a.x, true), var_0.a.zx, !func_1(_wgslsmith_sub_u32(1u ^ u_input.a.x, select(u_input.a.x, u_input.a.x, false)), true, _wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, 71986u)), u_input.a.yx >> (vec2<u32>(19812u, 2373u) % vec2<u32>(32u)))).a.zy);
    let var_2 = Struct_1(!var_0.a, ~(-var_0.b));
    var var_3 = firstTrailingBit(var_0.b.yy);
    global0 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(vec4<i32>(-30283i, var_0.b.x, var_2.b.x, var_3.x) | vec4<i32>(var_2.b.x, var_2.b.x, var_3.x, 1i))) & -(vec4<i32>(var_0.b.x, -27328i, var_2.b.x, -1i) >> (abs(vec4<u32>(4294967295u, 10046u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)))), vec2<u32>(u_input.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f - -788f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(165f, -1000f, var_1.x)))), _wgslsmith_f_op_f32(401f + _wgslsmith_f_op_f32(f32(-1f) * -545f)))));
}

