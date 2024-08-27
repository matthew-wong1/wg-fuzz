struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4977u, 0u, 0u, 94164u), vec4<u32>(1u, 1u, 22372u, 18982u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_clamp_u32(21519u, u_input.c, u_input.c << (0u % 32u))), abs(u_input.b), abs(firstLeadingBit(_wgslsmith_mod_u32(u_input.c, u_input.c)))), _wgslsmith_dot_vec4_u32(select(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 42464u), global2[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<u32>(u_input.c, u_input.c, 32385u, u_input.c), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_div_u32(u_input.c, 36750u), 0u >> (u_input.c % 32u), countOneBits(28497u), 6720u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false)), vec4<u32>(~7796u, _wgslsmith_div_u32(u_input.b, u_input.b) >> (u_input.c % 32u), 4294967295u, countOneBits(4294967295u ^ u_input.b))), 17652u, 1u);
    var var_1 = Struct_2(Struct_1(-266f), _wgslsmith_mult_u32(3448u, ~firstLeadingBit(~u_input.b)));
    var var_2 = Struct_3(select(true, false, true), ~var_0.x, Struct_2(var_1.a, 32662u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-293f)), global0.x, _wgslsmith_f_op_f32(ceil(-704f)))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, ~(-8679i), u_input.a.x, u_input.a.x) ^ abs(abs(vec4<i32>(13855i, u_input.a.x, u_input.a.x, u_input.a.x))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-26155i, 2147483647i, 2147483647i, 12209i), u_input.a), abs(vec4<i32>(u_input.a.x, -1i, 0i, -35551i)), firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, -1867i, 2147483647i))), _wgslsmith_mod_vec4_i32(~max(u_input.a, u_input.a), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -2147483647i, -2147483647i, u_input.a.x))));
    let var_3 = Struct_2(var_1.a, countOneBits(~var_0.x));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_2.d.yz)), var_2.d.yy));
    return var_1.b;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<Struct_3, 18>();
    let var_0 = select(select(vec4<bool>(func_3() < 0u, true, !all(vec4<bool>(true, false, false, arg_1.x)), 3616i != arg_0), arg_1, select(select(select(vec4<bool>(false, arg_2.x, true, true), arg_1, arg_1.x), arg_1, any(arg_1.wzw)), arg_1, select(!vec4<bool>(arg_1.x, true, arg_2.x, true), !vec4<bool>(arg_2.x, arg_1.x, arg_2.x, false), arg_2.x))), vec4<bool>(arg_1.x, ((-806f < global0.x) & true) || !(arg_0 == u_input.a.x), true, true), true);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(398f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * 1000f), _wgslsmith_f_op_f32(global0.x * -457f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, global0.x)), vec2<f32>(-309f, 1683f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2834f, 181f), vec2<f32>(137f, 183f)))))))));
    global2 = array<vec4<u32>, 2>();
    let var_1 = Struct_3(var_0.x | select(any(var_0), all(arg_1), _wgslsmith_f_op_f32(step(-807f, global0.x)) == _wgslsmith_f_op_f32(global0.x - -3193f)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_3.zy & _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(110983u, 12646u)), vec2<u32>(u_input.c, arg_3.x)), 33049u), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x))), ~(~(~4294967295u))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1000f, _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(339f - -255f), global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -201f, global0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(101f, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, 1890f))))), abs(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(0i, arg_0, arg_0, arg_0)), firstTrailingBit(vec4<i32>(2147483647i, 3651i, arg_0, 1i) & vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i)))));
    return Struct_1(206f);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 18u)];
    var var_1 = arg_1;
    let var_2 = func_2(arg_0 >> (((u_input.c | 30530u) | ~_wgslsmith_clamp_u32(var_0.c.b, 16678u, 1u)) % 32u), vec4<bool>(_wgslsmith_f_op_f32(-1019f + _wgslsmith_f_op_f32(trunc(global0.x))) <= var_0.d.x, true, true, select(u_input.c <= 44442u, arg_1.x, true) && all(vec4<bool>(true, true, true, var_1.x))), !select(select(var_1.yz, var_1.zx, vec2<bool>(var_0.a, var_0.a)), select(vec2<bool>(var_1.x, true), vec2<bool>(arg_1.x, false), true), true), _wgslsmith_div_vec4_u32(~(~global2[_wgslsmith_index_u32(var_0.c.b, 2u)]) | ~(vec4<u32>(u_input.c, var_0.c.b, 0u, 1u) << (vec4<u32>(75053u, u_input.b, 31834u, u_input.c) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.c, 2u)], vec4<u32>(u_input.b, 0u, u_input.c, 29260u)) | ~(~0u), 2u)]));
    let var_3 = 51145u;
    var_0 = global1[_wgslsmith_index_u32(var_0.c.b, 18u)];
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(~u_input.a, u_input.a));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 495f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1977f))))));
    let var_1 = select(43403u << (1u % 32u), u_input.c, func_1(var_0.x, vec3<bool>(true, !any(vec2<bool>(true, false)), true)));
    var var_2 = Struct_3(true, ~0u, Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(global0.x))), ~_wgslsmith_add_u32(var_1 & u_input.c, 14819u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(func_2(var_0.x, vec4<bool>(true, true, true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), ~global2[_wgslsmith_index_u32(43100u, 2u)]).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * _wgslsmith_div_f32(1000f, -1043f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(703f)) * _wgslsmith_f_op_f32(-643f - global0.x))), vec3<f32>(func_2(~u_input.a.x, select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(var_1, u_input.b)), 2u)]).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), global0.x))), (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -65760i, -31131i, var_0.x), vec4<i32>(-28415i, 1i, u_input.a.x, var_0.x) >> (global2[_wgslsmith_index_u32(var_1, 2u)] % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_mult_i32(-20634i, 1i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~(-32470i), max(u_input.a.x, -2147483647i))) << (vec4<u32>(select(~var_1, 25384u, true), firstTrailingBit(12549u), 0u, 41149u) % vec4<u32>(32u)));
    let var_3 = var_2.c;
    let var_4 = var_3.a.a;
    var_0 = var_2.e;
    global1 = array<Struct_3, 18>();
    let var_5 = -2147483647i << (select(var_2.c.b, abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(64825u, var_3.b, u_input.b), vec3<u32>(var_1, 137u, var_3.b)), ~var_3.b)), var_2.a) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

