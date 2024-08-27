struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(78950i, 47721i), vec2<i32>(9486i, 0i), vec2<i32>(-31021i, 11436i), vec2<i32>(-89868i, -24250i), vec2<i32>(-1i, 39321i), vec2<i32>(31614i, 21677i));

var<private> global3: array<vec2<f32>, 5>;

var<private> global4: f32 = 503f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = u_input.c;
    var_0 = 19007i;
    global0 = array<bool, 29>();
    let var_1 = global3[_wgslsmith_index_u32(31552u, 5u)];
    var var_2 = vec4<bool>(all(select(!(!vec4<bool>(false, false, arg_0.a.x, arg_1)), !vec4<bool>(global0[_wgslsmith_index_u32(43225u, 29u)], global0[_wgslsmith_index_u32(arg_3.c.x, 29u)], arg_0.a.x, false), true)), any(select(!arg_3.a, vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], select(true, false, false), false | arg_1), any(select(vec4<bool>(false, arg_1, arg_0.b, true), vec4<bool>(true, true, arg_0.a.x, false), vec4<bool>(false, arg_3.b, arg_0.b, false))))), any(select(select(select(vec4<bool>(false, true, arg_3.b, false), vec4<bool>(false, arg_0.a.x, arg_3.b, true), vec4<bool>(arg_1, false, arg_1, arg_1)), vec4<bool>(arg_3.a.x, true, true, arg_0.a.x), false), vec4<bool>(!arg_1, u_input.a != -1i, var_1.x != 828f, u_input.d.x >= u_input.d.x), arg_1)), !any(!vec3<bool>(arg_1, false, arg_1)) & arg_0.a.x);
    return ~vec2<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.d.x, 15055u) >> (11687u % 32u), ~_wgslsmith_div_u32(arg_0.c.x, arg_3.c.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + -1099f))));
    let var_1 = !(!(!select(!vec2<bool>(global0[_wgslsmith_index_u32(50663u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), vec2<bool>(true, true)), true)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(global3[_wgslsmith_index_u32(~1u, 5u)])), Struct_1(u_input.b.zz ^ ~(~vec2<u32>(4294967295u, u_input.b.x))), vec2<u32>(~33548u, ~(~(~u_input.b.x))), Struct_1(~u_input.d.xx));
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~abs(vec3<i32>(u_input.a, u_input.c, -16482i)), vec3<i32>(~23613i, select(u_input.a, u_input.a, true), -2147483647i << (u_input.b.x % 32u))), ~_wgslsmith_div_vec3_i32(max(vec3<i32>(6491i, u_input.a, u_input.a), vec3<i32>(u_input.c, u_input.c, 2133i)), select(vec3<i32>(-1998i, u_input.c, 41964i), vec3<i32>(17174i, u_input.a, u_input.c), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], var_1.x, false)))), vec3<i32>(-1i, select(-2147483647i, u_input.c, all(vec3<bool>(true, true, true))), (u_input.c ^ firstLeadingBit(30107i)) >> (~1u % 32u)));
    var var_4 = u_input.a;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1000f + var_2.a.x), var_2.a.x)))), Struct_1(~func_3(Struct_3(vec3<bool>(true, var_1.x, var_1.x), false, u_input.d), u_input.c < var_3, firstTrailingBit(77184i), Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(11722u, 29u)], false), var_1.x, vec3<u32>(u_input.b.x, 4294967295u, u_input.d.x)))), u_input.d.zz, Struct_1(~(~u_input.b.xx)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32) -> vec3<bool> {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(trunc(566f));
    let var_2 = func_2();
    global3 = array<vec2<f32>, 5>();
    var_0 = _wgslsmith_add_i32(u_input.a, -1i);
    return select(select(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(117390u, 29u)], arg_1, global0[_wgslsmith_index_u32(arg_2, 29u)]), vec3<bool>(arg_1, true, arg_1), arg_0), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(arg_2, 29u)]), vec3<bool>(true, arg_1, false)), true), !vec3<bool>(select(arg_1, true, false), false, !global0[_wgslsmith_index_u32(33708u, 29u)]), vec3<bool>(!arg_0, (59057u | var_2.b.a.x) >= var_2.c.x, false)), select(!vec3<bool>(!arg_0, any(vec3<bool>(arg_1, global0[_wgslsmith_index_u32(40671u, 29u)], arg_1)), false), select(vec3<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], arg_1)), false), !vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(0u, 29u)]), !select(vec3<bool>(false, arg_1, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], arg_1, arg_0), arg_1)), select(vec3<bool>(arg_0, true, var_2.a.x >= var_2.a.x), !select(vec3<bool>(false, arg_1, false), vec3<bool>(true, arg_1, arg_0), vec3<bool>(arg_0, false, arg_1)), select(!vec3<bool>(arg_0, arg_1, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 29u)], arg_1, arg_1), vec3<bool>(false, arg_0, true)))), vec3<bool>(select(true, arg_1, 1u > u_input.b.x), all(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])) || !(arg_0 & false), arg_0 && all(select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(154009u, 29u)], arg_1, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec3<bool>(false, false, true), func_1(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], false, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)])) | all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, false)), u_input.d.x), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(232f))) * -1000f))));
    var var_2 = func_1(abs(-u_input.c) != -16544i, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], ~(~func_3(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], false, true), true, vec3<u32>(u_input.b.x, u_input.b.x, 36286u)), global0[_wgslsmith_index_u32(u_input.d.x, 29u)], 1i, Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false, global0[_wgslsmith_index_u32(0u, 29u)]), global0[_wgslsmith_index_u32(1u, 29u)], u_input.b)).x) | _wgslsmith_sub_u32(~u_input.b.x ^ u_input.d.x, 1u));
    var var_3 = Struct_3(vec3<bool>(!(!global0[_wgslsmith_index_u32(3036u, 29u)]), any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], var_2.x, var_2.x, true), vec4<bool>(true, true, var_2.x, false), vec4<bool>(true, var_2.x, true, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], var_2.x, var_2.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], var_2.x), var_2.x), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(59230u, 29u)], true, var_2.x))), true), all(vec3<bool>(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.b.x), 29u)], var_2.x, global0[_wgslsmith_index_u32(max(~0u, 2932u), 29u)])), u_input.d);
    var_1 = -1193f;
    var_2 = vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(1u)), 29u)], false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(0u, select(4294967295u, 0u, true), 21959u), select(firstLeadingBit(0u) >> (~u_input.b.x % 32u), 0u & ~var_3.c.x, true), ~78632u), 29u)]);
    let var_4 = -vec2<i32>(5844i, countOneBits(countOneBits(countOneBits(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(vec3<i32>(-2147483647i, _wgslsmith_add_i32(u_input.a, var_4.x), -1165i << (u_input.b.x % 32u))), abs(firstTrailingBit(vec4<u32>(43798u, var_3.c.x, 4294967295u, var_3.c.x)) ^ vec4<u32>(47869u, 4294967295u, u_input.d.x, 34156u)) << (reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(24650u, 55470u, u_input.d.x, 55505u), vec4<u32>(0u, 0u, var_3.c.x, u_input.b.x) ^ vec4<u32>(var_3.c.x, 33432u, 18563u, 25898u))) % vec4<u32>(32u)));
}

