struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(1402f, 23060u), Struct_1(-423f, 1u)), Struct_2(Struct_1(-881f, 24055u), Struct_1(1354f, 4294967295u)), Struct_2(Struct_1(1356f, 83911u), Struct_1(1123f, 30542u)), Struct_2(Struct_1(-1458f, 30855u), Struct_1(145f, 107501u)), Struct_2(Struct_1(1605f, 35131u), Struct_1(-1356f, 34522u)), Struct_2(Struct_1(-126f, 1u), Struct_1(1311f, 31165u)), Struct_2(Struct_1(-772f, 45024u), Struct_1(-369f, 115932u)));

var<private> global1: i32;

var<private> global2: array<bool, 16>;

var<private> global3: array<u32, 13>;

var<private> global4: vec3<i32> = vec3<i32>(1i, 11761i, 1i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = !(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(17310u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, 0u), vec3<u32>(0u, 0u, arg_0)), vec3<u32>(41363u, 5102u, 4294967295u))), 16u)] || global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(21458u, abs(~arg_0)), 16u)]);
    let var_1 = max(vec3<u32>(global3[_wgslsmith_index_u32(~4294967295u, 13u)], global3[_wgslsmith_index_u32(~min(global3[_wgslsmith_index_u32(27541u, 13u)] ^ u_input.a, arg_0), 13u)], global3[_wgslsmith_index_u32(78548u, 13u)]), ~(~(~(~vec3<u32>(4294967295u, 86455u, global3[_wgslsmith_index_u32(1u, 13u)])))));
    var var_2 = _wgslsmith_mult_vec3_i32(u_input.b.ywy, _wgslsmith_div_vec3_i32(-(~u_input.b.zwz >> (var_1 % vec3<u32>(32u))), u_input.b.yyx));
    var var_3 = _wgslsmith_mod_i32(-52841i, ~(i32(-1i) * -40853i) ^ u_input.b.x);
    let var_4 = i32(-1i) * -2147483647i;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.yz, ~(vec2<u32>(4294967295u, 82105u) >> ((var_1.xz >> (var_1.zz % vec2<u32>(32u))) % vec2<u32>(32u)))), 9748u, max(countOneBits(~39891u), min(46803u, ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]))), 1u);
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1295f, _wgslsmith_f_op_f32(1215f * -257f), _wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(903f + 111f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 594f))), -1506f, -1209f));
    global4 = vec3<i32>(1i, ~2147483647i, 28608i);
    var var_1 = select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~u_input.a & ~u_input.a) ^ 1762u, 13u)], _wgslsmith_dot_vec4_u32(func_3(global3[_wgslsmith_index_u32(1u, 13u)]), ~(vec4<u32>(u_input.a, 0u, 1u, u_input.a) << (select(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(588u, 13u)], u_input.a, u_input.a), vec4<u32>(4294967295u, 45592u, global3[_wgslsmith_index_u32(u_input.a, 13u)], 5504u), global2[_wgslsmith_index_u32(1u, 16u)]) % vec4<u32>(32u)))), any(vec3<bool>(true, false, true)));
    let var_2 = vec2<f32>(var_0.x, var_0.x);
    return Struct_5(Struct_4(Struct_3(global0[_wgslsmith_index_u32(0u, 7u)], ~74749u), firstTrailingBit(countOneBits(~u_input.b.zzx)), Struct_1(_wgslsmith_f_op_f32(-733f * _wgslsmith_f_op_f32(700f - -685f)), global3[_wgslsmith_index_u32(21269u, 13u)]), 1i, firstLeadingBit(vec4<u32>(firstLeadingBit(u_input.a), ~4294967295u, 0u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.a, 13u)], u_input.a)))), Struct_3(global0[_wgslsmith_index_u32(0u, 7u)], 1u), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.x), ~global3[_wgslsmith_index_u32(43031u, 13u)]), Struct_1(_wgslsmith_div_f32(-536f, -666f), 4191u)), _wgslsmith_sub_u32(23009u | ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 13u)], _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a) ^ global3[_wgslsmith_index_u32(1u, 13u)])));
}

fn func_1(arg_0: f32) -> i32 {
    global2 = array<bool, 16>();
    global0 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~_wgslsmith_div_u32(0u, u_input.a), u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u) & vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(84383u, 13u)], 13u)], 13u)], 13u)]), vec2<u32>(4294967295u, 4294967295u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 849u), countOneBits(vec2<u32>(u_input.a, 8594u)), _wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], 1u), vec2<u32>(53429u, u_input.a))) % vec2<u32>(32u)), select(~vec2<u32>(global3[_wgslsmith_index_u32(40111u, 13u)], 4294967295u), abs(vec2<u32>(global3[_wgslsmith_index_u32(1u, 13u)], u_input.a)), !vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 16u)]))));
    let var_1 = func_2();
    var var_2 = -_wgslsmith_mult_vec3_i32(~var_1.a.b, vec3<i32>(u_input.c, i32(-1i) * -var_1.a.d, 1i));
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    var var_0 = vec2<i32>(abs(1i), global4.x);
    global2 = array<bool, 16>();
    global1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.x, u_input.b.x | global4.x), (u_input.b.x | -u_input.b.x) ^ global4.x);
    var var_1 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~abs(~(1u << (_wgslsmith_mod_u32(u_input.a, 1u) % 32u))), 13u)], 7u)];
    global0 = array<Struct_2, 7>();
    let var_2 = -210f;
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(46242u, 0u, var_3, 4294967295u), ~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], 14178u, 4294967295u, 0u)), ~(~1u), 20399u), 0u, abs(~(~var_1.b.b)), _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_clamp_u32(~u_input.a, ~4294967295u, var_3))), _wgslsmith_sub_i32(func_1(_wgslsmith_f_op_f32(-var_2)) >> (~27046u % 32u), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-657f)), var_2, !global2[_wgslsmith_index_u32(var_3, 16u)]))) - _wgslsmith_f_op_f32(-975f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) - _wgslsmith_f_op_f32(-var_2)))));
}

