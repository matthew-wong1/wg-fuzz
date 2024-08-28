struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(32173u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 4858u, 1359u, 32150u), vec4<u32>(1u, 1u, 21828u, 164758u), vec4<u32>(124625u, 1u, 57749u, 4294967295u), vec4<u32>(0u, 0u, 0u, 57127u), vec4<u32>(0u, 0u, 4294967295u, 12686u), vec4<u32>(13582u, 29208u, 7139u, 8601u), vec4<u32>(35233u, 1u, 3688u, 30600u), vec4<u32>(10986u, 79788u, 1u, 24892u), vec4<u32>(1u, 1u, 7104u, 0u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global1 = array<vec3<bool>, 16>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(27709u)), 4u)], global2[_wgslsmith_index_u32(countOneBits(1u), 4u)]);
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32((u_input.a >> (global3[_wgslsmith_index_u32(4294967295u, 10u)] % vec4<u32>(32u))) << (~var_0.b.c % vec4<u32>(32u)), ~(-u_input.a));
    var var_2 = Struct_1(max(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b.c, vec4<u32>(var_0.b.c.x, 38179u, 0u, var_0.a.d)), vec4<u32>(var_0.a.c.x, 1u, var_0.a.d, 25184u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(global3[_wgslsmith_index_u32(var_0.b.c.x, 10u)]) << ((vec4<u32>(0u, var_0.b.c.x, 24489u, var_0.a.d) >> (vec4<u32>(var_0.a.c.x, 1u, 784u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~var_0.a.a)), true, vec4<u32>(var_0.b.c.x, ~0u, ~1u, _wgslsmith_mod_u32(70945u, ~27408u)), _wgslsmith_mult_u32(~(~var_0.b.a.x), ~(~(~0u))));
    var_2 = Struct_1(global3[_wgslsmith_index_u32(reverseBits(89577u), 10u)], 320f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(847f))) * _wgslsmith_f_op_f32(-2002f + -954f)), ~select(var_2.c << (vec4<u32>(var_2.a.x, 0u, var_0.a.a.x, 4294967295u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(1u, 10u)], vec4<bool>(true, any(vec4<bool>(var_0.b.b, true, arg_0.x, arg_0.x)), any(vec2<bool>(arg_0.x, false)), all(vec4<bool>(arg_0.x, var_2.b, arg_0.x, true)))), 4294967295u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f - _wgslsmith_f_op_f32(640f - _wgslsmith_f_op_f32(round(-709f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_2.d, 4u)];
    let var_1 = Struct_2(arg_2, arg_2);
    var var_2 = vec2<i32>(u_input.c, u_input.c | _wgslsmith_div_i32(u_input.c, 20572i));
    let var_3 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    var var_4 = vec3<bool>(arg_0.x, true, arg_0.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0)), -459f);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(!global1[_wgslsmith_index_u32(arg_0.d, 16u)], -1857f, Struct_1(arg_0.a, false, vec4<u32>(arg_0.d, arg_0.d, 1u, 0u), arg_0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(794f, 1386f)), _wgslsmith_f_op_f32(max(-1630f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1518f + 307f)) - 466f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(870f, 217f) - 701f), _wgslsmith_f_op_f32(f32(-1f) * -122f), -861f)));
    global1 = array<vec3<bool>, 16>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61866u, 43097u, 65662u), _wgslsmith_mod_vec3_u32(vec3<u32>(17868u, 27097u, 71340u), vec3<u32>(55083u, 92475u, 4294967295u))), 4u)], !any(vec3<bool>(false, false, false))), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    var_0 = !select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 1u), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(27718u, 1u, 22100u, 0u), global3[_wgslsmith_index_u32(48040u, 10u)], vec4<bool>(var_0.x, var_0.x, false, true)))), 16u)], select(vec3<bool>(true, any(vec2<bool>(false, var_0.x)), var_0.x), !global1[_wgslsmith_index_u32(84036u, 16u)], !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 16u)]), global1[_wgslsmith_index_u32(~128053u, 16u)]);
    global0 = array<vec2<i32>, 25>();
    var var_1 = var_0.x;
    var var_2 = select(vec2<bool>(var_0.x, var_0.x), select(var_0.zy, vec2<bool>(any(!vec4<bool>(true, var_0.x, true, var_0.x)), true), select(var_0.x, true, any(!var_0.zy))), var_0.x);
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~29423u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 21960u), vec3<u32>(44790u, 58933u, 14355u)) & ~4294967295u), 4u)], Struct_1(~vec4<u32>(80984u, 1u, 4294967295u, 1u) >> (~min(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(12983u, 10u)]) % vec4<u32>(32u)), true, vec4<u32>(1u, 5306u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19665u, 3863u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 25333u)), select(29975u, 53155u, true)), _wgslsmith_mod_u32(abs(23899u), ~16988u)), 4294967295u));
    var_0 = !select(select(!select(vec3<bool>(false, var_0.x, var_2.x), global1[_wgslsmith_index_u32(var_3.a.d, 16u)], var_2.x), select(global1[_wgslsmith_index_u32(57584u, 16u)], vec3<bool>(var_3.a.b, var_0.x, var_3.a.b), select(vec3<bool>(false, var_3.b.b, var_2.x), vec3<bool>(var_3.a.b, var_0.x, true), var_3.a.b)), global1[_wgslsmith_index_u32(~max(var_3.b.a.x, 1u), 16u)]), !(!vec3<bool>(true, var_0.x, true)), var_0.x);
    let var_4 = abs(-u_input.c);
    var var_5 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(select(var_3.a.d, _wgslsmith_mod_u32(var_3.a.c.x, 59503u), var_0.x) & 54381u, 10u)], true, _wgslsmith_clamp_vec4_u32(firstTrailingBit(global3[_wgslsmith_index_u32(1u, 10u)] >> (global3[_wgslsmith_index_u32(4294967295u, 10u)] % vec4<u32>(32u))), var_3.a.a, global3[_wgslsmith_index_u32(~max(var_3.b.c.x, var_3.a.d), 10u)]), ~_wgslsmith_mod_u32(0u, var_3.a.d)), global2[_wgslsmith_index_u32(var_3.b.c.x, 4u)]);
    let x = u_input.a;
    s_output = StorageBuffer(270f);
}

