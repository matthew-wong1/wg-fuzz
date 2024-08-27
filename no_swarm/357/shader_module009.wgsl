struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-1i, 0i, 2147483647i, 4835i), 23360u, 1552f, -535f), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(1i, -42011i, -219i, -2794i), 68281u, -332f, 2775f), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i), 49863u, -1181f, 957f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-1i, -1i, 1i, -1i), 21983u, -766f, -521f), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 40733i), 1u, 474f, -564f), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(2147483647i, 54948i, -60460i, i32(-2147483648)), 4294967295u, 1344f, 1793f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(1i, i32(-2147483648), 20880i, 29452i), 4294967295u, -652f, -2315f), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-5823i, 21701i, -1i, 2147483647i), 19483u, -409f, -314f), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(1i, 9374i, 2147483647i, -1i), 98128u, -484f, 2707f), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-51390i, 2147483647i, i32(-2147483648), 56466i), 0u, -2388f, -237f), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, 45194i, -13937i, 34037i), 46460u, 357f, 298f), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-1i, -22257i, -1i, 0i), 106634u, -537f, -1000f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, -24742i, i32(-2147483648), -10941i), 75190u, 480f, -1805f), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-31391i, -1i, 1i, 1463i), 0u, -1341f, 1324f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(8387i, -61133i, -23025i, 81269i), 0u, -225f, 1613f), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(i32(-2147483648), 34947i, i32(-2147483648), i32(-2147483648)), 94576u, 186f, 874f), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(10130i, i32(-2147483648), 0i, 2147483647i), 8875u, 1000f, -985f), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-23706i, 8493i, 11327i, 33978i), 1u, 1000f, 1472f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-1i, 1i, 0i, -37936i), 31423u, -400f, -1547f), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(i32(-2147483648), -12939i, 1i, -29279i), 1583u, -615f, 1539f), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, 1i, 0i, 2147483647i), 4294967295u, 262f, -619f));

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(abs(1u), 21u)];
    var var_1 = !all(select(!(!var_0.a), var_0.a, var_0.a));
    let var_2 = var_0.c;
    var var_3 = select(var_0.a.zx, vec2<bool>(all(vec2<bool>(true, true)), all(var_0.a.xz)), var_0.a.zw);
    let var_4 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.e, 429f, false))))) * _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1931f) * _wgslsmith_div_f32(-220f, global2.x))))));
    return var_0.c;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(150f - arg_0.x), 1f) * global2.zz);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, 2008f) * global1[_wgslsmith_index_u32(u_input.a, 32u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 743f, 775f))))));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), func_3(u_input.c, vec2<bool>((-57648i | u_input.c) == ~u_input.b, _wgslsmith_f_op_f32(trunc(988f)) <= _wgslsmith_div_f32(global2.x, var_0.x))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1076f + _wgslsmith_f_op_f32(select(401f, -1002f, arg_1)))))));
    let var_3 = Struct_1(select(!select(select(vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec4<bool>(arg_1, false, false, arg_1), any(vec3<bool>(false, arg_1, arg_1))), vec4<bool>(true, arg_1, select(any(vec4<bool>(false, true, arg_1, arg_1)), arg_1, arg_1 | true), arg_1), true), ~(-(~firstLeadingBit(vec4<i32>(1i, -21226i, 6675i, 0i)))), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(var_2.x, _wgslsmith_sub_u32(4294967295u, u_input.a)) | min(_wgslsmith_add_u32(62886u, 56954u), 1u), 39303u), global2.x, 1775f);
    return _wgslsmith_mod_i32(-63619i, i32(-1i) * -var_3.b.x) ^ var_3.b.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: i32) -> vec3<i32> {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-17870i, 0i, arg_3, -44120i), vec4<i32>(_wgslsmith_add_i32(u_input.b, ~(-34499i)), abs(2932i), arg_1, -2147483647i), vec4<i32>(select(arg_3 & -35743i, 1i ^ arg_3, true), ~(-2147483647i), _wgslsmith_mod_i32(-94516i, -arg_3), 1i));
    global0 = array<Struct_1, 21>();
    global1 = array<vec3<f32>, 32>();
    let var_1 = vec3<u32>(19445u, u_input.a >> (_wgslsmith_add_u32(~47103u, ~arg_0.x) % 32u), firstTrailingBit(u_input.a));
    let var_2 = Struct_1(!(!vec4<bool>(false, true, all(vec4<bool>(true, true, false, true)), true)), vec4<i32>(-1i) * -firstTrailingBit(min(vec4<i32>(11789i, arg_1, arg_1, -39779i), vec4<i32>(34486i, arg_3, -27883i, 1i))), ~(4294967295u & ~(1u | u_input.a)), global2.x, global2.x);
    return vec3<i32>(i32(-1i) * -2147483647i, -(reverseBits(1i) & abs(arg_3)), var_0.x) >> (firstLeadingBit(~vec3<u32>(53148u, 4294967295u, _wgslsmith_clamp_u32(var_2.c, var_2.c, arg_0.x))) % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    global0 = array<Struct_1, 21>();
    let var_0 = func_4((max(vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(29154u, 4294967295u), vec2<u32>(1u, u_input.a), vec2<u32>(4401u, 44014u))) ^ _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.a, 55586u) ^ vec2<u32>(21476u, 0u))) & vec2<u32>(u_input.a, 1u), u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), -func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - 2646f), _wgslsmith_f_op_f32(floor(arg_0))), arg_1.x));
    let var_1 = u_input.a;
    var var_2 = global0[_wgslsmith_index_u32(var_1, 21u)];
    var var_3 = firstTrailingBit(-1i) >> (u_input.a % 32u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-global2.x), vec3<bool>(true, true, true)), 21u)];
    let var_1 = -(~vec2<i32>(var_0.b.x, var_0.b.x));
    var var_2 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, ~u_input.c) & ~vec2<i32>(u_input.c, var_1.x), var_1), vec2<i32>(0i, -673i & var_0.b.x), false);
    var var_3 = var_0.b.x;
    var_2 = firstLeadingBit(var_1);
    var_2 = var_0.b.yy;
    let var_4 = Struct_1(vec4<bool>(var_0.a.x | !any(var_0.a), true, u_input.a > ~0u, any(vec2<bool>(true, var_0.a.x))), var_0.b, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-685f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1463f, 224f, var_0.a.x))), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(min(var_0.d, var_0.d)))))), _wgslsmith_f_op_f32(f32(-1f) * -630f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), var_4.d))));
}

