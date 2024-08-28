struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global1: f32 = -1063f;

var<private> global2: Struct_1;

var<private> global3: array<bool, 24> = array<bool, 24>(true, false, false, false, true, true, true, true, false, true, true, true, false, true, false, false, true, true, true, false, false, false, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = global2.b;
    var_0 = vec2<bool>(!select(any(vec4<bool>(var_0.x, true, false, global2.b.x)), (false | var_0.x) || var_0.x, any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false, false))), !(!(u_input.a != 1i)) | !any(vec3<bool>(true, global3[_wgslsmith_index_u32(global2.c.x, 24u)], global3[_wgslsmith_index_u32(1u, 24u)])));
    let var_1 = Struct_1(1i, global2.b, global2.c);
    global0 = array<vec3<bool>, 12>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) - _wgslsmith_div_f32(554f, 1875f)) + -581f)) - _wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(537f - 402f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: f32) -> vec4<i32> {
    let var_0 = vec4<f32>(1032f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 + arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1488f)) - _wgslsmith_f_op_f32(func_3())))), -587f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1040f))), -677f);
    let var_1 = countOneBits(-firstTrailingBit(-(~vec2<i32>(0i, -39120i))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1501f);
    let var_2 = vec3<bool>(true, all(select(vec4<bool>(u_input.a >= 48666i, false, arg_2, all(arg_0.b)), select(vec4<bool>(arg_2, true, true, true), select(vec4<bool>(true, arg_2, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(global2.c.x, 24u)], true, arg_2), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0.c.x, 24u)], false, true)), vec4<bool>(global2.b.x, arg_0.b.x, true, false)), vec4<bool>(any(vec3<bool>(arg_2, true, true)), global3[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 24u)], false, global3[_wgslsmith_index_u32(41220u, 24u)]))), any(vec2<bool>(global2.b.x, arg_0.b.x)));
    var var_3 = _wgslsmith_div_u32(arg_1.x, ~(~min(arg_0.c.x, _wgslsmith_dot_vec2_u32(global2.c.yy, vec2<u32>(59077u, arg_1.x)))));
    return _wgslsmith_mod_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(36785i, var_1.x, arg_0.a, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(-7012i, u_input.a, var_1.x, 2147483647i), vec4<i32>(global2.a, 2147483647i, 2147483647i, var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-21796i, -52228i, -2147483647i, -2147483647i), vec4<i32>(global2.a, global2.a, -2147483647i, -18693i)))), vec4<i32>(-2120i | _wgslsmith_clamp_i32(1i, -2147483647i, 0i), -55742i, min(_wgslsmith_div_i32(-8346i, -1i), -(~var_1.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-var_1.x, arg_0.a), global2.a)));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(-func_2(Struct_1(14089i, vec2<bool>(false, false), vec3<u32>(global2.c.x, 15445u, 26908u)), global2.c, global3[_wgslsmith_index_u32(global2.c.x, 24u)], 1460f), vec4<i32>(1i, -11547i, -17358i, -u_input.a))), select(vec2<bool>(true, global2.b.x), !vec2<bool>(!global2.b.x, arg_0.x), all(vec3<bool>(global2.b.x, global2.b.x, global2.b.x))), abs(abs(global2.c)));
    var var_1 = ~(~(~(~vec2<u32>(4294967295u, global2.c.x))));
    global3 = array<bool, 24>();
    global1 = _wgslsmith_f_op_f32(abs(-2314f));
    var var_2 = Struct_1(global2.a << (~(~1u) % 32u), vec2<bool>(!var_0.b.x, all(arg_0.xy)), ~global2.c);
    return !(!var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(2147483647i, !select(select(global2.b, select(global2.b, global2.b, global2.b.x), func_1(global0[_wgslsmith_index_u32(global2.c.x, 12u)])), select(vec2<bool>(false, global2.b.x), global2.b, !global2.b), global2.b), select(~_wgslsmith_mult_vec3_u32(global2.c, _wgslsmith_mult_vec3_u32(global2.c, global2.c)), global2.c ^ ~global2.c, global0[_wgslsmith_index_u32(0u, 12u)]));
    global3 = array<bool, 24>();
    global1 = -910f;
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(7194i), var_0.a, abs(1i | global2.a)), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i << (~global2.c.x % 32u), _wgslsmith_add_i32(max(2147483647i, global2.a), u_input.a), ~reverseBits(var_0.a), 32860i), firstLeadingBit(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, u_input.a, -27294i, -27680i), vec4<i32>(-2147483647i, 14699i, 1i, global2.a))))), -1i);
    global1 = -531f;
    var var_2 = var_0;
    let var_3 = ~_wgslsmith_mod_u32(countOneBits(0u), ~(~global2.c.x) & _wgslsmith_sub_u32(max(global2.c.x, 4294967295u), var_2.c.x ^ 124585u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec3<i32>(var_1.x, u_input.a, -1i), abs(var_1.xyx), any(vec4<bool>(global3[_wgslsmith_index_u32(global2.c.x, 24u)], true, false, global3[_wgslsmith_index_u32(var_2.c.x, 24u)]))) ^ _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, -17408i, var_2.a), -select(var_1.xwz, var_1.wyy, global3[_wgslsmith_index_u32(var_0.c.x, 24u)]), vec3<i32>(u_input.a, var_2.a | -2147483647i, 0i)), var_2.c, vec3<i32>(firstLeadingBit(var_2.a), -34430i, abs(u_input.a)));
}

