struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(vec3<bool>(true, true, true), true, false, 2147483647i), vec2<u32>(45869u, 12566u), Struct_2(vec3<bool>(true, false, true), true, false, -10887i), -1i, vec3<i32>(39117i, -63465i, 0i));

var<private> global1: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_2(vec3<bool>(false, true, true), true, true, -1356i), vec2<u32>(21221u, 0u), Struct_2(vec3<bool>(true, false, false), false, false, 2147483647i), 0i, vec3<i32>(0i, 1i, -58900i)), Struct_5(Struct_2(vec3<bool>(true, true, true), true, true, 0i), vec2<u32>(11392u, 4294967295u), Struct_2(vec3<bool>(true, false, false), true, true, -5074i), 0i, vec3<i32>(-49250i, 1i, 0i)), Struct_5(Struct_2(vec3<bool>(true, true, true), true, false, -16358i), vec2<u32>(1u, 55548u), Struct_2(vec3<bool>(true, true, false), false, true, 1i), 1i, vec3<i32>(-1i, -14235i, 13677i)), Struct_5(Struct_2(vec3<bool>(false, false, false), false, false, -1i), vec2<u32>(0u, 49923u), Struct_2(vec3<bool>(true, true, false), true, true, 38626i), 0i, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_5(Struct_2(vec3<bool>(true, false, false), false, true, 1i), vec2<u32>(46469u, 64938u), Struct_2(vec3<bool>(true, true, true), false, false, -6362i), -24987i, vec3<i32>(2147483647i, 0i, 0i)), Struct_5(Struct_2(vec3<bool>(false, false, false), true, true, 0i), vec2<u32>(4294967295u, 14999u), Struct_2(vec3<bool>(true, false, true), false, true, -5009i), -12052i, vec3<i32>(0i, i32(-2147483648), -19279i)), Struct_5(Struct_2(vec3<bool>(true, false, true), false, false, 2147483647i), vec2<u32>(0u, 7899u), Struct_2(vec3<bool>(true, false, false), false, false, 0i), 0i, vec3<i32>(-6581i, 41882i, 1i)), Struct_5(Struct_2(vec3<bool>(false, false, false), true, true, -32862i), vec2<u32>(27972u, 1u), Struct_2(vec3<bool>(false, true, false), true, true, -5069i), 59196i, vec3<i32>(0i, 0i, -18719i)), Struct_5(Struct_2(vec3<bool>(true, false, true), false, false, 2147483647i), vec2<u32>(62001u, 4294967295u), Struct_2(vec3<bool>(true, true, false), true, false, 29321i), 33903i, vec3<i32>(38856i, i32(-2147483648), 74404i)), Struct_5(Struct_2(vec3<bool>(true, true, true), false, true, 55912i), vec2<u32>(4294967295u, 26636u), Struct_2(vec3<bool>(false, true, true), false, true, -1i), -1816i, vec3<i32>(-19599i, 2147483647i, -41689i)), Struct_5(Struct_2(vec3<bool>(false, true, false), true, true, 37153i), vec2<u32>(1u, 1u), Struct_2(vec3<bool>(false, false, true), false, false, 1i), -16394i, vec3<i32>(1i, -11821i, 0i)), Struct_5(Struct_2(vec3<bool>(true, false, false), true, true, 2147483647i), vec2<u32>(92748u, 32641u), Struct_2(vec3<bool>(true, true, false), true, false, -19251i), 1i, vec3<i32>(121i, -17280i, 0i)), Struct_5(Struct_2(vec3<bool>(false, true, true), true, false, -27216i), vec2<u32>(45505u, 47542u), Struct_2(vec3<bool>(false, true, false), false, false, -52674i), i32(-2147483648), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), Struct_5(Struct_2(vec3<bool>(false, false, false), true, true, i32(-2147483648)), vec2<u32>(37794u, 4294967295u), Struct_2(vec3<bool>(false, false, true), false, true, -35043i), i32(-2147483648), vec3<i32>(0i, i32(-2147483648), 1i)), Struct_5(Struct_2(vec3<bool>(false, true, false), false, false, i32(-2147483648)), vec2<u32>(1u, 29442u), Struct_2(vec3<bool>(true, true, true), true, true, 2147483647i), i32(-2147483648), vec3<i32>(-16262i, -1439i, 2147483647i)), Struct_5(Struct_2(vec3<bool>(false, false, true), true, false, 2147483647i), vec2<u32>(36009u, 92105u), Struct_2(vec3<bool>(false, false, false), false, true, -2372i), i32(-2147483648), vec3<i32>(1i, 8827i, 0i)), Struct_5(Struct_2(vec3<bool>(true, false, false), false, true, 62108i), vec2<u32>(20820u, 3196u), Struct_2(vec3<bool>(false, true, true), false, true, i32(-2147483648)), -20687i, vec3<i32>(-19085i, 0i, 2147483647i)), Struct_5(Struct_2(vec3<bool>(false, true, true), true, false, 2147483647i), vec2<u32>(4294967295u, 30690u), Struct_2(vec3<bool>(false, true, true), false, true, 1i), -8172i, vec3<i32>(0i, -33669i, 2147483647i)), Struct_5(Struct_2(vec3<bool>(false, false, false), false, false, 15452i), vec2<u32>(1u, 20247u), Struct_2(vec3<bool>(true, true, true), false, true, -1i), -11967i, vec3<i32>(68872i, 16470i, -18163i)), Struct_5(Struct_2(vec3<bool>(false, true, true), true, true, i32(-2147483648)), vec2<u32>(58140u, 4294967295u), Struct_2(vec3<bool>(true, false, false), true, true, -1i), 0i, vec3<i32>(-8714i, 2147483647i, 0i)), Struct_5(Struct_2(vec3<bool>(false, false, true), false, false, 60587i), vec2<u32>(1u, 1u), Struct_2(vec3<bool>(false, true, true), false, true, 0i), -1i, vec3<i32>(-2563i, -22800i, 31091i)));

var<private> global2: array<u32, 5>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global0 = Struct_5(global0.a, ~(select(max(global0.b, global0.b), vec2<u32>(u_input.e, 62164u), any(vec2<bool>(false, false))) << ((~vec2<u32>(1u, 0u) | _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, 59721u), global0.b)) % vec2<u32>(32u))), global0.c, 2147483647i, ~(~_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, u_input.b.x, arg_0.b.d), vec3<i32>(1i, u_input.d, global0.c.d), vec3<bool>(arg_0.b.b, global0.c.c, arg_0.c.b)), vec3<i32>(global0.a.d, -3604i, global0.c.d))));
    global1 = array<Struct_5, 21>();
    global1 = array<Struct_5, 21>();
    let var_0 = u_input.e & global0.b.x;
    global2 = array<u32, 5>();
    return select(vec4<bool>(any(global0.a.a), any(select(!vec2<bool>(arg_0.b.b, arg_0.b.a.x), vec2<bool>(global0.a.b, global0.c.c), any(vec4<bool>(false, true, true, true)))), global2[_wgslsmith_index_u32(~1u << (var_0 % 32u), 5u)] < global0.b.x, true), !vec4<bool>(arg_0.c.a.x, any(arg_0.c.a) || (0u > u_input.e), true, any(select(vec4<bool>(false, true, global0.c.a.x, global0.a.a.x), vec4<bool>(true, arg_0.b.b, true, false), vec4<bool>(arg_0.c.b, false, true, false)))), global0.a.a.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = func_3(Struct_3(Struct_1(_wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(select(105f, -294f, arg_1.c.b)))), Struct_2(arg_1.a.a, arg_1.a.a.x, !arg_1.c.a.x, select(2147483647i, arg_1.a.d | arg_1.e.x, global0.a.c & false)), Struct_2(arg_1.c.a, true, !any(vec4<bool>(global0.c.a.x, true, arg_1.a.a.x, global0.a.b)), 2147483647i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)));
    var var_2 = ~(~((vec3<u32>(1u, global2[_wgslsmith_index_u32(arg_1.b.x, 5u)], 25893u) & (vec3<u32>(arg_1.b.x, global0.b.x, 0u) >> (vec3<u32>(81251u, global0.b.x, 115701u) % vec3<u32>(32u)))) ^ _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.e, 1u, 41126u), vec3<u32>(4260u, 12401u, 4294967295u)), ~vec3<u32>(0u, u_input.e, 51445u))));
    let var_3 = !select(select(!(!vec2<bool>(arg_1.a.b, true)), arg_1.a.a.xz, global0.a.a.xz), !vec2<bool>(true, global0.a.a.x), ~1u > ~firstLeadingBit(var_2.x));
    var var_4 = Struct_3(Struct_1(var_1.a), Struct_2(vec3<bool>(any(!global0.c.a), false, -1833f <= _wgslsmith_f_op_f32(-var_1.a)), true, true, -((-20550i | arg_1.d) | (arg_1.a.d & arg_1.c.d))), arg_1.a);
    return vec3<u32>(u_input.e << (var_2.x % 32u), max(arg_1.b.x, 40958u), var_2.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    global2 = array<u32, 5>();
    global0 = global1[_wgslsmith_index_u32(1u, 21u)];
    let var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))) + 1029f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_2.x)))))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))) * -782f)));
    var var_1 = u_input.b;
    var_1 = firstTrailingBit(firstTrailingBit(vec4<i32>(-1i) * -reverseBits(vec4<i32>(var_1.x, global0.d, u_input.a, global0.a.d))));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.x));
}

fn func_1(arg_0: i32) -> u32 {
    global2 = array<u32, 5>();
    var var_0 = Struct_3(func_4(func_2(-firstTrailingBit(vec4<i32>(0i, -2147483647i, arg_0, 18482i)), global1[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12121u, 5u)], 5u)] >> (0u % 32u)), 21u)]), _wgslsmith_div_u32(~4294967295u << (global0.b.x % 32u), ~u_input.e ^ u_input.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(207f, 1281f, -1860f), vec3<f32>(-710f, -124f, -686f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(985f, -114f, -2048f) + vec3<f32>(966f, 122f, 939f)))))), Struct_2(global0.c.a, any(vec2<bool>(true, false)), global0.c.b, -2147483647i), global0.a);
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global0.b, ~func_2(-u_input.b, Struct_5(Struct_2(vec3<bool>(global0.a.c, false, true), global0.c.c, false, 2147483647i), vec2<u32>(1u, u_input.e), Struct_2(var_0.b.a, var_0.b.a.x, true, 25812i), -33443i, vec3<i32>(-34539i, arg_0, global0.a.d))).xz), 21u)];
    global1 = array<Struct_5, 21>();
    let var_2 = vec3<i32>(1i, reverseBits(min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, var_1.d, var_0.b.d), vec3<i32>(u_input.c, -20474i, var_1.e.x))), max(-arg_0, _wgslsmith_add_i32(u_input.d, 30399i)))), _wgslsmith_mult_i32(~global0.a.d, _wgslsmith_div_i32(abs(~21718i), min(9818i, arg_0) ^ (i32(-1i) * -1i))));
    return 5123u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], 0u, 36979u, 18408u), vec4<u32>(u_input.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.b.x, 5u)], 5u)], u_input.e, global0.b.x)), ~vec4<u32>(939u, 15258u, 38252u, global2[_wgslsmith_index_u32(4294967295u, 5u)])), vec4<u32>(func_1(reverseBits(global0.d)), ~1u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global0.b.x & global2[_wgslsmith_index_u32(6386u, 5u)], 5u)], 1u), firstTrailingBit(~0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-410f, 387f)))))));
}

