struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(false, vec4<i32>(i32(-2147483648), 1i, 0i, -33706i), false, false, false)), Struct_2(Struct_1(false, vec4<i32>(-78067i, -1i, -4516i, -29949i), false, true, true)), Struct_2(Struct_1(false, vec4<i32>(9241i, -12777i, 5072i, 0i), true, true, true)), Struct_2(Struct_1(false, vec4<i32>(-17152i, -18435i, -1i, 2147483647i), true, false, false)), Struct_2(Struct_1(false, vec4<i32>(2147483647i, 13101i, -917i, -31649i), true, true, true)), Struct_2(Struct_1(false, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 2147483647i), false, false, false)), Struct_2(Struct_1(false, vec4<i32>(6281i, i32(-2147483648), 1i, 13622i), false, true, true)), Struct_2(Struct_1(false, vec4<i32>(-27144i, 2147483647i, -38599i, -13534i), false, false, false)), Struct_2(Struct_1(false, vec4<i32>(29905i, 27286i, 0i, -69978i), false, false, true)));

var<private> global2: vec2<f32> = vec2<f32>(-775f, -804f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~4294967295u, firstTrailingBit(25479u)), reverseBits(abs(_wgslsmith_mod_u32(1u, 1u)))), 9u)];
    let var_1 = ~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-25016i, -u_input.a), ~_wgslsmith_add_i32(arg_0, var_0.a.b.x), i32(-1i) * -2147483647i, -_wgslsmith_sub_i32(var_0.a.b.x, arg_0)), -(~(-var_0.a.b)));
    var var_2 = true && any(!select(!vec3<bool>(var_0.a.c, var_0.a.e, var_0.a.e), select(vec3<bool>(false, true, false), vec3<bool>(var_0.a.c, true, false), vec3<bool>(var_0.a.d, false, var_0.a.c)), var_0.a.d));
    let var_3 = Struct_1(-(~var_1.x) < -_wgslsmith_mod_i32(var_0.a.b.x, -18680i), max(var_0.a.b, _wgslsmith_mult_vec4_i32(~var_0.a.b, ~vec4<i32>(4495i, arg_0, arg_0, 2147483647i) & vec4<i32>(43042i, 2147483647i, arg_0, u_input.a))), false, select(var_0.a.c, var_0.a.c, false) & all(select(vec2<bool>(true, var_0.a.a), vec2<bool>(true, var_0.a.d), true)), var_0.a.c & var_0.a.d);
    var var_4 = ~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(80496u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(true, false, var_0.a.e)), vec3<u32>(1u, 1u, 1u)), 1338u) | vec3<u32>(firstLeadingBit(59996u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 3256u), vec3<u32>(0u, 45610u, 4294967295u)) % 32u)), firstLeadingBit(48187u >> (1u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(69431u, 4294967295u, 3070u, 0u), vec4<u32>(1u, 1u, 1u, 1u)));
    return arg_1;
}

fn func_2() -> Struct_1 {
    let var_0 = !(all(vec3<bool>(true, true, true)) || !(all(vec2<bool>(true, false)) | true));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-198f, _wgslsmith_f_op_f32(func_3(firstTrailingBit(27567i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) - -993f))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(1293f - _wgslsmith_f_op_f32(floor(-637f))), any(vec3<bool>(var_0, var_0, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(abs(global2.x))) + -129f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_div_f32(505f, 845f)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-436f))))));
    global1 = array<Struct_2, 9>();
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, var_1.x, var_1.x, -2413f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, 1000f, 1000f))) - vec4<f32>(global2.x, -696f, var_1.x, var_1.x)), !all(vec2<bool>(false, false)))))));
    let var_2 = var_1.x;
    return Struct_1(var_0, ~max(vec4<i32>(~u_input.a, abs(36958i), 1i, u_input.b.x), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-2235i, 22898i, u_input.a, -2147483647i)), vec4<i32>(83050i, 10219i, 1i, 0i), firstTrailingBit(vec4<i32>(u_input.c, u_input.b.x, 46139i, u_input.b.x)))), var_0, select(false, all(!(!vec4<bool>(true, var_0, false, var_0))), var_0), select(true, true, var_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = -min(_wgslsmith_sub_vec3_i32(~vec3<i32>(-45683i, -86813i, -53550i), max(arg_3.b.wzy, arg_0.b.xwz)) >> (select(~vec3<u32>(42662u, arg_2, 0u), vec3<u32>(arg_2, arg_2, arg_2), true) % vec3<u32>(32u)), arg_0.b.yww);
    let var_1 = any(vec2<bool>(false, any(!vec3<bool>(arg_0.e, false, arg_3.c))));
    var_0 = arg_3.b.wyy ^ arg_0.b.wzy;
    global1 = array<Struct_2, 9>();
    var var_2 = arg_3;
    return var_2.e;
}

fn func_1() -> bool {
    global1 = array<Struct_2, 9>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, global2.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -926f))), vec2<f32>(global2.x, global2.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1281f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1415f, -155f))))));
    var var_0 = _wgslsmith_f_op_f32(2553f + global2.x);
    return any(vec3<bool>(select(true, true, true), !((global2.x <= global2.x) && true), func_4(Struct_1(false, vec4<i32>(u_input.a, u_input.c, u_input.c, -1i), true, true, true), vec3<f32>(global2.x, global2.x, 493f), 0u, func_2()) | (58319u <= firstTrailingBit(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    global0 = u_input.a;
    var var_0 = _wgslsmith_div_i32(firstLeadingBit(u_input.b.x), u_input.b.x);
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x));
    let var_1 = vec2<i32>(17300i, u_input.a) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(firstLeadingBit(1u), ~(~88329u))) % vec2<u32>(32u));
    var var_2 = Struct_1(global2.x >= global2.x, -reverseBits(vec4<i32>(select(0i, u_input.b.x, false), 28887i, 0i, 24699i)), true, any(vec3<bool>(true, true, (-17604i << (1u % 32u)) < var_1.x)), !func_1());
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(u_input.b.x), -var_1.x, firstTrailingBit(var_1.x)), -min(vec3<i32>(u_input.c, 21045i, -55030i), vec3<i32>(2147483647i, var_2.b.x, 28584i))), select(~abs(var_2.b.www), vec3<i32>(_wgslsmith_add_i32(var_2.b.x, var_2.b.x), 2916i, var_1.x), vec3<bool>(var_2.c & true, true, all(vec2<bool>(var_2.a, false)))), select(!vec3<bool>(var_2.a, false, false), !select(vec3<bool>(false, true, false), vec3<bool>(true, var_2.d, var_2.e), vec3<bool>(var_2.a, false, var_2.a)), vec3<bool>(true, !var_2.d, var_2.a))), ~1u, countOneBits(vec2<i32>(-42103i, max(~var_1.x, -var_1.x))), abs(~vec2<i32>(u_input.c | 1i, ~(-50991i))));
}

