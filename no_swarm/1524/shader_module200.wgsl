struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(335f, 566f, 561f);

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(480f, 1418f), vec2<f32>(-124f, 656f), vec2<f32>(-938f, -1021f), vec2<f32>(-1000f, -1948f), vec2<f32>(-548f, 804f), vec2<f32>(520f, 1155f), vec2<f32>(720f, 1199f), vec2<f32>(432f, 965f), vec2<f32>(-1534f, -967f), vec2<f32>(-480f, -953f), vec2<f32>(-967f, -1379f), vec2<f32>(-1000f, -513f), vec2<f32>(-607f, 1805f), vec2<f32>(-1000f, -515f), vec2<f32>(545f, -1205f), vec2<f32>(1142f, -1142f), vec2<f32>(2036f, 304f), vec2<f32>(-524f, 1102f), vec2<f32>(-418f, -902f), vec2<f32>(111f, 646f), vec2<f32>(-450f, -1025f), vec2<f32>(-201f, 517f), vec2<f32>(2739f, -459f), vec2<f32>(-1194f, -996f), vec2<f32>(-342f, 1047f), vec2<f32>(-431f, -554f), vec2<f32>(-393f, 432f), vec2<f32>(645f, -389f));

var<private> global2: array<vec4<u32>, 28>;

var<private> global3: Struct_1;

var<private> global4: vec2<i32> = vec2<i32>(30967i, -8032i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global4 = _wgslsmith_div_vec2_i32(select(_wgslsmith_mod_vec2_i32(arg_0.zy, firstLeadingBit(vec2<i32>(-9122i, -43930i))), arg_0.xx, false), arg_0.xz);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(step(global0.x, global3.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-887f, -607f)) + -490f)), -947f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1976f + -509f) + -1521f));
    let var_2 = u_input.a;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-global3.a);
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(8994i, -16639i, global4.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(704f, global3.a)) - _wgslsmith_f_op_f32(global0.x + global0.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, 252f, -1039f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, global3.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_div_f32(global0.x, global3.a), _wgslsmith_f_op_f32(-212f * global3.a))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-896f, global3.a, 1128f)))))));
    return _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(1u, 28u)], ~global2[_wgslsmith_index_u32(u_input.a, 28u)], select(~(~global2[_wgslsmith_index_u32(u_input.a, 28u)]), global2[_wgslsmith_index_u32(27925u, 28u)], true & any(vec2<bool>(false, true))) << (global2[_wgslsmith_index_u32(~(~abs(u_input.a)), 28u)] % vec4<u32>(32u)));
}

fn func_1() -> i32 {
    global4 = ~vec2<i32>(0i, 0i);
    global1 = array<vec2<f32>, 28>();
    var var_0 = ~max(global2[_wgslsmith_index_u32(u_input.a, 28u)], func_2());
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(170f - 1000f))), -914f));
    var var_2 = Struct_1(-1036f);
    return _wgslsmith_mod_i32((-_wgslsmith_dot_vec4_i32(vec4<i32>(-9123i, u_input.b, -84583i, 1i), vec4<i32>(1i, global4.x, 15680i, 1i)) | _wgslsmith_add_i32(~8478i, 1i)) >> (~37067u % 32u), _wgslsmith_add_i32(-(~29332i), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1234f, 347f))) - global3.a));
    let var_1 = firstTrailingBit(~vec2<u32>(u_input.a, 4294967295u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * -128f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(510f + var_0.a), _wgslsmith_div_f32(global3.a, global3.a), all(vec3<bool>(true, true, false)))))))));
    let var_3 = -select(_wgslsmith_div_vec3_i32(firstLeadingBit(min(vec3<i32>(27393i, -1i, 24155i), vec3<i32>(-1i, -2147483647i, -52327i))), vec3<i32>(global4.x | 0i, abs(975i), global4.x ^ -996i)), vec3<i32>(abs(~u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_div_i32(-global4.x, select(-1i, 13920i, false))), false);
    global4 = vec2<i32>(_wgslsmith_add_i32(-func_1(), i32(-1i) * -_wgslsmith_mult_i32(var_3.x, 2644i)), -2147483647i);
    global3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(12372u, ~(~_wgslsmith_div_u32(u_input.a, abs(1u))), -(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, global4.x, var_3.x), vec4<i32>(93687i, 13613i, -16197i, -41777i)), ~vec4<i32>(-1i, -2147483647i, global4.x, global4.x)) & min(-vec4<i32>(global4.x, 2147483647i, 13391i, var_3.x), -vec4<i32>(global4.x, -32205i, var_3.x, var_3.x))), _wgslsmith_clamp_i32(abs(-2147483647i), -61996i, global4.x) & 2147483647i);
}

