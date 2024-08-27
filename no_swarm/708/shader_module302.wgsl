struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 25>;

var<private> global2: i32;

var<private> global3: vec2<i32> = vec2<i32>(0i, 37008i);

var<private> global4: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(871f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))))))));
    var_0 = _wgslsmith_f_op_f32(round(-2387f));
    global2 = global0.d.x;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_div_f32(global0.e.x, 1197f)))))));
    var var_1 = firstTrailingBit(4294967295u);
    return global0.e;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1302f, 1012f, global0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-785f, -372f, global0.c) * vec3<f32>(global0.a.x, global0.e.x, global0.c)), true)), vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), 633f, _wgslsmith_f_op_f32(-global0.c)), 934f <= _wgslsmith_f_op_f32(global0.c + global0.e.x))) - _wgslsmith_div_vec3_f32(global0.a, global0.e.wxx)), vec2<u32>(33247u, ~(~40920u >> (max(0u, 0u) % 32u))), 106f, vec3<i32>(abs(global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), ~(global0.d.x ^ -2147483647i), -1i), _wgslsmith_f_op_vec4_f32(func_3()));
    let var_1 = Struct_1(var_0.a, _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(50690u, ~global0.b.x)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(31246u, u_input.a.x)), ~u_input.a.xy) << (~(~var_0.b) % vec2<u32>(32u))), _wgslsmith_div_f32(-559f, global0.c), vec3<i32>(global3.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b.x, _wgslsmith_mod_u32(global0.b.x, _wgslsmith_mult_u32(global0.b.x, 1u))), 25u)], -13896i), global0.e);
    global4 = array<vec4<bool>, 16>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a.x, -476f)), -490f)))), _wgslsmith_f_op_f32(-global0.a.x));
    var var_3 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    global0 = func_2();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.x, global0.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1816f, _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_vec4_f32(func_3()).x))) + arg_2));
    let var_1 = func_2();
    let var_2 = func_2();
    let var_3 = firstTrailingBit(_wgslsmith_div_vec3_i32(var_2.d, min(-max(var_2.d, global0.d), ~abs(vec3<i32>(arg_0.d.x, var_2.d.x, 1i)))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1943f, -709f, false)) + _wgslsmith_f_op_f32(-3541f + -164f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x * global0.e.x), _wgslsmith_f_op_f32(floor(-1558f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c * global0.a.x) * _wgslsmith_f_op_f32(var_2.c - 1428f))), var_2.a.x), countOneBits(arg_0.b << (var_1.b % vec2<u32>(32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1295f))), arg_0.e.x)), vec3<i32>(arg_0.d.x, -47864i, firstLeadingBit(-var_3.x >> (func_2().b.x % 32u))), var_2.e);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = vec2<bool>(!any(vec2<bool>(true, true)), !select(true, true, arg_3 < 13609u));
    var var_2 = firstTrailingBit(countOneBits(-68893i) ^ var_0.d.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-func_2().a.x), -686f, _wgslsmith_f_op_f32(-1321f - global0.c));
    let var_4 = var_1.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(-734f, global0.a.x, var_3.x), true)))))), firstLeadingBit((vec2<u32>(1u, 0u) & global0.b) ^ vec2<u32>(1u, ~u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1812f), -reverseBits(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_2.d.x, global0.d.x, -1i), vec3<i32>(2147483647i, arg_1.x, var_0.d.x), vec3<bool>(true, var_1.x, true)), vec3<i32>(-26447i, -15225i, 8535i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_4(Struct_1(vec3<f32>(var_0.e.x, -284f, global0.c), vec2<u32>(0u, u_input.a.x), arg_0.x, arg_1.yzw, vec4<f32>(var_3.x, 896f, 1228f, -124f)), false, arg_0.x, vec4<u32>(arg_3, arg_3, 0u, global0.b.x)).e), var_0.e) + global0.e));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    let var_0 = func_5(_wgslsmith_div_vec3_f32(arg_0.e.wwx, _wgslsmith_f_op_vec3_f32(-global0.e.xzx)), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, global1[_wgslsmith_index_u32(global0.b.x, 25u)], 2147483647i, global3.x), vec4<i32>(-34066i, global3.x, global0.d.x, -1i)), -2147483647i, ~(arg_1.x | global0.d.x), 43175i), func_4(func_2(), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2015f - global0.c)) * arg_0.e.x), min(vec4<u32>(reverseBits(global0.b.x), 1u, 54035u >> (1u % 32u), min(67406u, 1u)), vec4<u32>(global0.b.x, ~arg_0.b.x, 2262u, 1u << (global0.b.x % 32u)))), arg_0.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1000f + global0.a.x), _wgslsmith_f_op_f32(940f * 1000f), _wgslsmith_f_op_f32(ceil(321f))))), _wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e.ywz * global0.a))), (any(global4[_wgslsmith_index_u32(4294967295u, 16u)]) | all(vec2<bool>(true, false))) | !all(vec4<bool>(true, false, true, false)))), ~global0.b, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(362f + arg_0.e.x), _wgslsmith_f_op_f32(arg_0.c + -614f), -269f)), select(firstTrailingBit(vec4<i32>(-2147483647i, arg_1.x, -36977i, global0.d.x)), vec4<i32>(-24184i, 2147483647i, arg_0.d.x, -10619i), true) << (~vec4<u32>(var_0.b.x, 6028u, arg_0.b.x, global0.b.x) % vec4<u32>(32u)), func_5(global0.a, ~vec4<i32>(global3.x, arg_1.x, -1099i, 4575i) & (vec4<i32>(-38429i, arg_0.d.x, arg_1.x, -2147483647i) >> (vec4<u32>(u_input.a.x, 1u, arg_0.b.x, u_input.a.x) % vec4<u32>(32u))), func_4(var_0, -1i == global1[_wgslsmith_index_u32(var_0.b.x, 25u)], var_0.c, ~vec4<u32>(0u, 49727u, global0.b.x, u_input.a.x)), abs(2739u)), ~arg_0.b.x).c, reverseBits(-_wgslsmith_div_vec3_i32(firstLeadingBit(arg_1), vec3<i32>(global0.d.x, -2147483647i, 2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x + 651f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f - 139f))), func_2().a.x, _wgslsmith_f_op_f32(select(-913f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.e.x) + _wgslsmith_f_op_f32(arg_0.a.x * arg_0.c)), !all(vec3<bool>(false, true, false)))), var_0.a.x));
    var var_2 = func_2().b.x;
    var var_3 = Struct_1(vec3<f32>(-735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), -1070f), u_input.a.zx, 773f, var_1.d, vec4<f32>(var_1.c, global0.a.x, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-func_4(Struct_1(global0.e.xzz, vec2<u32>(87899u, u_input.a.x), -1000f, vec3<i32>(0i, -1i, arg_1.x), vec4<f32>(var_0.e.x, global0.e.x, arg_0.c, global0.c)), true, var_0.a.x, vec4<u32>(1u, global0.b.x, 0u, global0.b.x)).e.x)), _wgslsmith_f_op_f32(-var_0.e.x)));
    var var_4 = !global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~69787u), 16u)];
    return _wgslsmith_f_op_f32(ceil(1266f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 16>();
    var var_0 = i32(-1i) * -2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(656f, 190f, 188f), vec2<u32>(0u, global0.b.x), global0.a.x, global0.d, global0.e), global0.d))), -1110f), global0.c));
    let var_2 = Struct_1(vec3<f32>(-714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)), 2199f), u_input.a.zx << (((~u_input.a.zx << (countOneBits(u_input.a.yz) % vec2<u32>(32u))) << (~u_input.a.xx % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-global0.a.x), vec3<i32>(-1i) * -(~global0.d), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.c, global0.e.x, var_1.x) - global0.e))), _wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) * vec4<f32>(global0.c, var_1.x, global0.a.x, 480f))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(_wgslsmith_mult_i32(var_2.d.x, global0.d.x), ~2147483647i, -26925i >> (global0.b.x % 32u), var_3.d.x) >> (abs(select(vec4<u32>(u_input.a.x, var_2.b.x, var_2.b.x, 0u), vec4<u32>(4294967295u, u_input.a.x, 31494u, var_3.b.x), vec4<bool>(true, true, true, false))) % vec4<u32>(32u))), ~vec4<u32>(global0.b.x, _wgslsmith_mod_u32(max(var_3.b.x, 1u), 17164u ^ var_2.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b.x, var_2.b.x), abs(vec2<u32>(u_input.a.x, 17264u))), var_2.b.x), firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 25u)] << (124183u % 32u), -23936i, i32(-1i) * -1i) | vec3<i32>(-2147483647i, i32(-1i) * -2147483647i, ~19702i)));
}

