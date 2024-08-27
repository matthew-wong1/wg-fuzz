struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 22853u, 83830u, 1u), vec2<bool>(false, false)), vec2<f32>(629f, 926f));

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 97584u, 92292u, 9717u), vec2<bool>(false, false));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    global1 = vec4<i32>(0i, _wgslsmith_sub_i32(global1.x, abs(global1.x)), (reverseBits(firstLeadingBit(global1.x)) << (~(1u << (u_input.a.x % 32u)) % 32u)) ^ min(-firstTrailingBit(-7060i), 1310i >> (_wgslsmith_mod_u32(global0.a.b.x, global0.a.b.x) % 32u)), global1.x);
    var var_0 = firstLeadingBit(countOneBits(vec3<i32>(0i, -14758i, 3791i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 6840i, 47011i), select(vec3<i32>(global1.x, -20005i, global1.x), u_input.c, true))));
    let var_1 = global0.a;
    let var_2 = Struct_2(global0.a, global0.b);
    var var_3 = vec2<bool>(true, true);
    return ~abs(4294967295u << ((var_2.a.b.x & ~global0.a.b.x) % 32u));
}

fn func_2() -> Struct_2 {
    global2 = global0.a;
    global2 = Struct_1(select(!global2.c, select(select(global2.c, global0.a.a, global2.c.x), global2.a, all(vec2<bool>(global0.a.a.x, global2.c.x))), vec2<bool>(-global1.x == u_input.b, global2.a.x)), global0.a.b ^ reverseBits(global2.b), vec2<bool>(any(vec3<bool>(global2.c.x, global0.a.c.x & global0.a.a.x, !global2.a.x)), !global0.a.c.x));
    let var_0 = Struct_1(!global0.a.c, _wgslsmith_mult_vec4_u32(global0.a.b, ~global2.b), vec2<bool>(78693i >= global1.x, global0.a.a.x && !global2.c.x));
    let var_1 = 38132u == global2.b.x;
    var var_2 = Struct_3(Struct_1(global0.a.c, countOneBits(global2.b), select(global2.a, select(!vec2<bool>(var_0.a.x, true), var_0.c, any(vec3<bool>(global2.a.x, false, true))), !(!global0.a.c.x))));
    return Struct_2(Struct_1(vec2<bool>(true, all(vec2<bool>(true, false))), vec4<u32>(1u | _wgslsmith_div_u32(u_input.a.x, 0u), ~(~var_2.a.b.x), _wgslsmith_mod_u32(~37558u, global0.a.b.x), func_3()), select(!(!global2.a), select(vec2<bool>(false, global2.c.x), select(vec2<bool>(true, false), vec2<bool>(var_0.c.x, false), global2.c.x), false), all(var_0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(floor(global0.b.x))))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(~(-_wgslsmith_mod_vec2_i32(vec2<i32>(-7898i, global1.x), global1.xy)), max(abs(global1.wy | u_input.c.xz), vec2<i32>(23717i, global1.x) & global1.wz)), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.b ^ -20912i, u_input.c.x)), reverseBits(global1.x)), 16827i, u_input.b);
    var var_1 = _wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(-1i) * -vec4<i32>(-35840i, 2286i, var_0.x, var_0.x)), _wgslsmith_mult_vec4_i32(reverseBits(~(vec4<i32>(var_0.x, 25247i, var_0.x, 0i) >> (vec4<u32>(0u, 1691u, arg_2.b.x, 19495u) % vec4<u32>(32u)))), vec4<i32>(-2147483647i, -2147483647i & global1.x, -40925i ^ global1.x, var_0.x)));
    global0 = func_2();
    var var_2 = global0.a;
    var var_3 = vec3<bool>(global0.a.c.x, countOneBits(u_input.b) != 1i, any(!vec3<bool>(false || var_2.c.x, true | var_2.c.x, global0.b.x == global0.b.x)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -46760i, -1i, global1.x) ^ vec4<i32>(u_input.b, global1.x, 20162i, u_input.b), vec4<i32>(0i, global1.x, u_input.c.x, -2934i) << (vec4<u32>(global0.a.b.x, 1u, 1u, global0.a.b.x) % vec4<u32>(32u)), vec4<i32>(global1.x, global1.x, global1.x, u_input.c.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -1i, global1.x, -1i), vec4<i32>(global1.x, -2567i, -23162i, global1.x) >> (global0.a.b % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.b, -1i), vec4<i32>(0i, global1.x, 0i, 6762i)), select(min(vec4<i32>(-11210i, -34928i, u_input.b, u_input.b), vec4<i32>(-8872i, 11015i, -2147483647i, global1.x)), -vec4<i32>(u_input.b, 1i, -16667i, 38456i), vec4<bool>(global2.a.x, global0.a.a.x, true, global2.a.x))), vec4<i32>(_wgslsmith_div_i32(global1.x, u_input.c.x), 0i, min(u_input.b, global1.x), -5086i) << (func_1(global0.a.a.x, true, Struct_1(global0.a.c, vec4<u32>(11657u, global2.b.x, 67534u, 52976u), vec2<bool>(true, false))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(select(vec4<i32>(global1.x, -11954i, global1.x, global1.x) & vec4<i32>(global1.x, global1.x, -1i, u_input.b), max(vec4<i32>(global1.x, 2147483647i, u_input.b, global1.x), vec4<i32>(-17172i, -53231i, u_input.b, 2147483647i)), !vec4<bool>(global2.a.x, global0.a.c.x, global2.a.x, false)), vec4<i32>(~2147483647i, global1.x, ~global1.x, select(-81661i, u_input.b, global0.a.a.x)))));
    var var_1 = vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -727f)), -263f);
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~4294967295u, global2.b.x), ~(~global0.a.b.zzy));
    global2 = Struct_1(global2.c, ~_wgslsmith_clamp_vec4_u32(global2.b, global0.a.b, vec4<u32>(global2.b.x, 4294967295u, 102703u, 39279u)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, global0.a.b.x, global2.b.x), vec4<u32>(0u, 0u, global2.b.x, var_2.x)), vec4<u32>(var_2.x, var_2.x, u_input.a.x, global2.b.x)), vec4<u32>(_wgslsmith_sub_u32(0u, global0.a.b.x), reverseBits(4294967295u), countOneBits(25507u), firstTrailingBit(global0.a.b.x))), global0.a.c);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(abs(global0.b.x))), _wgslsmith_f_op_f32(-var_1.x), -761f)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(step(var_1.x, var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2359f, var_1.x))), global0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1468f, global0.b.x))))))));
    let var_3 = vec3<bool>(false, false, global0.a.a.x && func_2().a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(any(!(!vec4<bool>(var_3.x, var_3.x, true, global2.c.x))), global0.a.c.x, Struct_1(!global0.a.a, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 27120u, var_2.x, global0.a.b.x), global0.a.b), select(!global2.c, select(vec2<bool>(var_3.x, false), vec2<bool>(true, var_3.x), global2.c.x), global0.a.a.x))).x);
}

