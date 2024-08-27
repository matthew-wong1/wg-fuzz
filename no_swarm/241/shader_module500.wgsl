struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -704f;

var<private> global1: array<bool, 26>;

var<private> global2: array<bool, 1>;

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<bool, 1>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -359f))))))), _wgslsmith_div_f32(-123f, 955f));
    global2 = array<bool, 1>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1717f)), _wgslsmith_f_op_f32(round(-1728f))));
    return _wgslsmith_add_vec2_i32(arg_2.a, vec2<i32>(-1i) * -(~arg_2.a >> (firstTrailingBit(vec2<u32>(55394u, u_input.a)) % vec2<u32>(32u))));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1045f) * 704f) - 1f) + -280f) - _wgslsmith_f_op_f32(trunc(-831f)));
    let var_0 = Struct_2(Struct_1(-reverseBits(max(vec2<i32>(-29266i, -54354i), vec2<i32>(8479i, -13235i))), 43055u, min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-14424i, 0i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 1i)) | ~18339i)), Struct_1(func_2(true, vec2<bool>(true, true), Struct_1(vec2<i32>(-2147483647i, -1063i), 0u, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -34513i, 1i), vec3<i32>(-2147483647i, -2147483647i, 14743i)))), u_input.a, -_wgslsmith_dot_vec2_i32(~vec2<i32>(22129i, 22101i), -vec2<i32>(-1i, 1i))), ~_wgslsmith_mod_u32(22190u, 10388u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1242f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_f_op_f32(-1134f - -631f)))) + -1000f) * _wgslsmith_f_op_f32(select(-170f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1825f, 1346f, global2[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_f32(floor(-1880f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1555f)))))), global2[_wgslsmith_index_u32(20266u, 1u)])));
    let var_2 = var_0;
    return 6170i;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2896f, -890f, arg_1)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2096f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1 - -791f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, -204f, 455f)))))));
    global1 = array<bool, 26>();
    global1 = array<bool, 26>();
    global2 = array<bool, 1>();
    let var_1 = !select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], arg_2, true, global1[_wgslsmith_index_u32(u_input.a, 26u)]), select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(53634u, 26u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(39958u, 1u)], true), vec4<bool>(arg_2, true, global2[_wgslsmith_index_u32(arg_0.a.b, 1u)], global2[_wgslsmith_index_u32(88275u, 1u)])), vec4<bool>(false, arg_2, false, global1[_wgslsmith_index_u32(31581u, 26u)])), !select(vec4<bool>(true, arg_2, global1[_wgslsmith_index_u32(64333u, 26u)], global1[_wgslsmith_index_u32(2914u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false, true, true), vec4<bool>(arg_2, true, true, true)), u_input.a <= ~arg_0.b.b), vec4<bool>(true, global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.b.b & 14071u), 26u)], false, !(!arg_2)), !select(select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(116855u, 1u)]), vec4<bool>(arg_2, global1[_wgslsmith_index_u32(arg_0.c, 26u)], arg_2, false)), select(vec4<bool>(false, arg_2, true, false), vec4<bool>(global1[_wgslsmith_index_u32(11876u, 26u)], global2[_wgslsmith_index_u32(18199u, 1u)], arg_2, false), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(arg_0.c, 26u)])), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.c, 26u)], arg_2, global1[_wgslsmith_index_u32(arg_0.b.b, 26u)], false)));
    return ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_0.c, arg_0.c, arg_0.a.b) | vec3<u32>(0u, 22173u, u_input.a)), abs(~vec3<u32>(55198u, arg_0.c, arg_0.b.b))), vec3<u32>(51999u, ~arg_0.a.b, 0u));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<bool>(!arg_0.x, true, !any(vec4<bool>(true, true, true, true)), ~_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 55738u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) != ~abs(_wgslsmith_mult_u32(u_input.a, 38449u)));
    var var_1 = var_0;
    var var_2 = Struct_1(vec2<i32>(2147483647i, -22998i << (1u % 32u)), ~(~u_input.a), 1i);
    var var_3 = func_4(Struct_2(Struct_1(select(-var_2.a, _wgslsmith_mult_vec2_i32(var_2.a, vec2<i32>(35244i, var_2.a.x)), !vec2<bool>(false, var_1.x)), var_2.b, var_2.c >> (_wgslsmith_clamp_u32(var_2.b, 0u, u_input.a) % 32u)), Struct_1(func_2(false, arg_0.yz, Struct_1(var_2.a, var_2.b, var_2.a.x)), _wgslsmith_mod_u32(4294967295u | u_input.a, 1u), func_3(var_0.x)), var_2.b & ~var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f - 1000f))) + 1356f), !all(select(select(vec4<bool>(global2[_wgslsmith_index_u32(var_2.b, 1u)], arg_0.x, false, true), var_0, var_0), vec4<bool>(arg_0.x, true, true, false), all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], arg_0.x, arg_0.x, var_1.x)))));
    global1 = array<bool, 26>();
    return Struct_2(Struct_1(min(_wgslsmith_div_vec2_i32(-var_2.a, _wgslsmith_add_vec2_i32(var_2.a, var_2.a)), -_wgslsmith_div_vec2_i32(var_2.a, vec2<i32>(0i, 2147483647i))), 2451u, -1i), Struct_1(var_2.a, (var_2.b & 4294967295u) >> (~(~1u) % 32u), -28224i), _wgslsmith_div_u32(var_3.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, var_3.x) ^ var_3.xx, abs(vec2<u32>(48521u, u_input.a))), vec2<u32>(_wgslsmith_add_u32(var_2.b, u_input.a), var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(f32(-1f) * -1875f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f * -262f))), 1f, -2248f, _wgslsmith_f_op_f32(abs(1f))));
    let var_1 = func_1(vec3<bool>(!any(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], false, false)), true, global1[_wgslsmith_index_u32(u_input.a, 26u)]));
    var var_2 = vec2<u32>(abs(19982u), ~((u_input.a ^ var_1.c) & u_input.a) >> (var_1.b.b % 32u));
    let var_3 = Struct_2(var_1.b, Struct_1(var_1.a.a, ~var_2.x, 22406i), ~_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(67230u, 4294967295u, 13037u, 4294967295u), vec4<u32>(var_1.b.b, 4294967295u, 4294967295u, 44960u))), vec4<u32>(_wgslsmith_mod_u32(18741u, 1u), ~13067u, ~4294967295u, _wgslsmith_sub_u32(11682u, var_2.x))));
    let var_4 = true;
    let var_5 = any(global3[_wgslsmith_index_u32(4294967295u, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((vec2<i32>(2147483647i, var_3.b.c) << (vec2<u32>(23382u, 77494u) % vec2<u32>(32u))) >> (vec2<u32>(var_2.x, 1u) % vec2<u32>(32u))), vec2<i32>(var_1.b.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_3.a.a.x, -1i) ^ vec3<i32>(var_1.a.a.x, var_3.a.a.x, var_1.a.a.x), ~vec3<i32>(0i, var_3.a.a.x, var_1.a.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -58235i), vec3<i32>(var_3.a.a.x, 5145i, -27732i)) | ~vec3<i32>(1i, -1i, var_1.b.a.x))), vec2<f32>(-487f, var_0.x));
}

