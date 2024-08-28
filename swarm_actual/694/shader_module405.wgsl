struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-1i, 21687i, -1192i, -62212i, i32(-2147483648), 10719i, 2147483647i, -25399i, 27856i);

var<private> global1: f32 = -534f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -266f);
    return vec3<u32>(~(~52164u), 1u, abs(u_input.a));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(-28740i, Struct_1(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(17305i, u_input.b, -2147483647i), vec3<i32>(u_input.b, -15749i, global0[_wgslsmith_index_u32(u_input.a, 9u)])), vec3<i32>(-35241i, min(global0[_wgslsmith_index_u32(u_input.a, 9u)], u_input.b), 49143i), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), !((2147483647i & global0[_wgslsmith_index_u32(12870u, 9u)]) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -14995i), vec2<i32>(global0[_wgslsmith_index_u32(85694u, 9u)], -3241i))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 1u), firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), select(~vec4<u32>(u_input.a, 62673u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 57876u), vec4<bool>(true, true, true, true)) >> (select(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a) << (vec4<u32>(u_input.a, 540u, 4294967295u, u_input.a) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false)) % vec4<u32>(32u))));
    var var_1 = global0[_wgslsmith_index_u32(~var_0.b.d.x, 9u)];
    var var_2 = -15327i;
    let var_3 = 1u;
    let var_4 = Struct_2(~u_input.b, Struct_1((vec3<i32>(-1i) * -var_0.b.a) | var_0.b.a, ~u_input.a >= 21671u, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.b.c.x, 14263u), firstTrailingBit(4294967295u)), reverseBits(countOneBits(var_0.b.c.x)), u_input.a, ~1u), var_0.b.d));
    return vec3<i32>(~(-(global0[_wgslsmith_index_u32(20001u, 9u)] | 2147483647i)) | _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(38524i, var_0.b.a.x)), -(~var_0.b.a.x)), var_0.b.a.x, var_4.b.a.x);
}

fn func_1(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(-671f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -1164f)) + 1026f));
    let var_0 = Struct_1(vec3<i32>(i32(-1i) * -32605i, countOneBits(2147483647i), countOneBits(-42607i)), true, ~(~min(~vec4<u32>(u_input.a, 4294967295u, 55169u, 0u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 17416u) % vec4<u32>(32u)))), ~vec4<u32>(61948u, 68026u, ~(16378u >> (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 48521u, 67821u) << (vec3<u32>(u_input.a, 3989u, u_input.a) % vec3<u32>(32u)), func_2())));
    let var_1 = vec4<i32>(u_input.b, ~1i, firstTrailingBit(1i), 2147483647i);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(var_0.d.x, 9u)], Struct_1(var_0.a ^ var_0.a, true, var_0.c, _wgslsmith_mod_vec4_u32(max(var_0.d, vec4<u32>(8581u, var_0.d.x, var_0.d.x, 18221u)), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) >> (~vec4<u32>(u_input.a, u_input.a, var_0.d.x, var_0.d.x) % vec4<u32>(32u))));
    var_2 = Struct_2(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_0, var_0.a.x, _wgslsmith_sub_i32(-56119i, -2147483647i))), var_1), Struct_1(func_3(), true, ~(~var_2.b.d), min(~(~vec4<u32>(var_2.b.c.x, 1u, 1u, 4294967295u)), var_0.d)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(416f, -1006f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1500f, _wgslsmith_f_op_f32(-1000f + -1224f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(-2147483647i)) < u_input.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-957f * -1773f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(50590u, 9u)], -2147483647i), u_input.b))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-207f, 138f)), _wgslsmith_f_op_f32(-1000f - -328f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(431f + 1287f), _wgslsmith_f_op_f32(f32(-1f) * -191f)))), _wgslsmith_div_f32(-1135f, -755f));
    let var_2 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, u_input.b) | (vec2<i32>(9788i, 25766i) & vec2<i32>(u_input.b, 1i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(13269i, -2147483647i), vec2<i32>(43562i, 1i)))), vec2<i32>(~u_input.b, firstTrailingBit(-(~global0[_wgslsmith_index_u32(33726u, 9u)]))));
    var var_3 = countOneBits(_wgslsmith_div_u32(~abs(1u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 20375u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(61140u, 86652u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(1u, 10083u, 4294967295u, u_input.a))))) >> (u_input.a % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-451f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(0i, -1i, -2147483647i)), countOneBits(-vec3<i32>(var_2, 0i, u_input.b))), u_input.a, 0i);
}

