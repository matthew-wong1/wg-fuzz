struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 107417u, 4294967295u), vec3<u32>(16573u, 34032u, 30244u), vec3<u32>(13672u, 51690u, 24124u), vec3<u32>(42526u, 1u, 1u), vec3<u32>(14616u, 9244u, 5718u), vec3<u32>(48382u, 39287u, 0u), vec3<u32>(22981u, 4294967295u, 21227u), vec3<u32>(1u, 55636u, 6128u), vec3<u32>(0u, 10449u, 31280u), vec3<u32>(1u, 4294967295u, 369u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 32601u), vec3<u32>(51513u, 26537u, 4294967295u), vec3<u32>(1u, 9844u, 1u), vec3<u32>(4294967295u, 66433u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(20446u, 500u, 60891u), vec3<u32>(4294967295u, 9452u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 32991u), vec3<u32>(10276u, 0u, 4284u), vec3<u32>(4294967295u, 30376u, 0u), vec3<u32>(4294967295u, 72976u, 4294967295u));

var<private> global1: vec4<f32> = vec4<f32>(-326f, 610f, -917f, -1100f);

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<f32>(397f, -331f, -106f), vec4<f32>(1000f, 520f, -3020f, -842f)), Struct_1(vec3<f32>(-209f, -1255f, -303f), vec4<f32>(1011f, -419f, 568f, -228f)), Struct_1(vec3<f32>(-612f, -821f, -2293f), vec4<f32>(-1564f, -650f, 845f, -566f)), Struct_1(vec3<f32>(-1841f, 687f, -238f), vec4<f32>(439f, -1385f, 1000f, -1369f)), Struct_1(vec3<f32>(-1372f, 932f, 711f), vec4<f32>(922f, 924f, -1000f, 511f)), Struct_1(vec3<f32>(1326f, 1187f, 415f), vec4<f32>(-2536f, -1695f, 1174f, -1324f)), Struct_1(vec3<f32>(1117f, -1374f, -1303f), vec4<f32>(-720f, -319f, -1630f, 690f)), Struct_1(vec3<f32>(-2509f, -479f, -1609f), vec4<f32>(-780f, -927f, 1028f, -2101f)), Struct_1(vec3<f32>(753f, -161f, -650f), vec4<f32>(2629f, -1159f, 649f, -657f)), Struct_1(vec3<f32>(783f, 612f, -1000f), vec4<f32>(698f, -1382f, 1736f, -634f)));

var<private> global3: array<bool, 29>;

var<private> global4: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(86237u, 4294967295u), vec2<u32>(32943u, 49199u), vec2<u32>(62956u, 0u), vec2<u32>(4294967295u, 31673u), vec2<u32>(28626u, 15168u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1472u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    var_0 = all(!vec4<bool>(select(true, any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], arg_1.x, global3[_wgslsmith_index_u32(u_input.a, 29u)], true)), global3[_wgslsmith_index_u32(u_input.a, 29u)]), true | !arg_1.x, _wgslsmith_f_op_f32(1119f + -2481f) >= _wgslsmith_div_f32(639f, global1.x), any(vec3<bool>(arg_1.x, arg_1.x, true)) | arg_1.x));
    var var_1 = _wgslsmith_mod_i32(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 12238i), vec2<i32>(58927i, 36199i))), ~max(1i, 0i)) >> (~_wgslsmith_sub_u32(8151u, firstLeadingBit(u_input.a)) % 32u);
    let var_2 = !vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 29u)], false, ~(0i >> (u_input.a % 32u)) != -27068i);
    var_1 = ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(_wgslsmith_add_i32(23566i, -1i)), _wgslsmith_div_i32(max(21018i, 2147483647i), abs(-21995i))), countOneBits(~_wgslsmith_add_i32(0i, -1i)), 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(arg_2.a.x, arg_2.b.x)))))) * _wgslsmith_f_op_f32(select(-449f, _wgslsmith_f_op_f32(-arg_2.b.x), false)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.b), arg_0.b, global3[_wgslsmith_index_u32(u_input.a, 29u)] | global3[_wgslsmith_index_u32(30901u, 29u)])) + _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1297f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))));
    var var_0 = vec2<bool>(true, !(!global3[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)]));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -635f, arg_0.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, global1.x, global1.x)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, var_1.b), vec2<bool>(global3[_wgslsmith_index_u32(0u, 29u)], false), Struct_1(vec3<f32>(-1000f, var_1.a.x, -467f), var_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -254f)), var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 1562f, -1130f));
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a) << (8786u % 32u), 10u)];
    return u_input.a;
}

fn func_1() -> vec4<f32> {
    let var_0 = false;
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 322f, -706f, -1483f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1203f, 1354f, 1000f, global1.x))))))));
    var var_1 = min(-vec4<i32>(-1i >> (func_2(global2[_wgslsmith_index_u32(47573u, 10u)]) % 32u), min(abs(0i), -43332i), 1i, abs(~1i)), vec4<i32>(-_wgslsmith_mult_i32(i32(-1i) * -10967i, _wgslsmith_mod_i32(0i, -5510i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-3901i, 2147483647i), vec2<i32>(-17339i, -44032i)) | -_wgslsmith_clamp_i32(-33580i, 38844i, -21840i), select(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-12169i, -42861i, -11527i, 15486i), vec4<i32>(16748i, 56082i, -43453i, -2147483647i), vec4<i32>(-1i, 53027i, 0i, -1i)), ~vec4<i32>(35644i, 52894i, 0i, 0i)), global3[_wgslsmith_index_u32(0u, 29u)]), abs(firstLeadingBit(~0i))));
    var var_2 = 22638u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-793f)), _wgslsmith_f_op_f32(trunc(136f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(global1.x, global1.x, 134f, 806f), var_0))))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1411f - -453f) + _wgslsmith_f_op_f32(817f + var_3.b.x))), 1367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~6220u, 10u)], vec2<bool>(false, var_0), Struct_1(global1.xzz, var_3.b))) + var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(-1174f, 1216f, global1.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 491f, global1.x), _wgslsmith_f_op_vec4_f32(func_1()), true))))));
    global2 = array<Struct_1, 10>();
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(381f, -2008f, -476f, -770f), var_0.b)))), var_0.b)));
    global4 = array<vec2<u32>, 7>();
    var var_1 = Struct_1(var_0.a, _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(1503f, var_0.a.x, -765f, 165f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-1i)) >> (0u % 32u), firstTrailingBit(-(i32(-1i) * -32673i)));
}

