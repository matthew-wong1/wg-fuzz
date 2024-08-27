struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 11> = array<f32, 11>(-517f, 993f, -1718f, 186f, 459f, -1278f, -525f, -515f, 850f, 366f, -121f);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, false, false), Struct_1(false, false, true), Struct_1(true, true, true), Struct_1(false, true, true), Struct_1(true, false, true), Struct_1(true, true, true), Struct_1(false, false, true), Struct_1(true, false, true), Struct_1(false, false, true), Struct_1(false, false, true), Struct_1(false, false, false), Struct_1(false, true, false), Struct_1(false, true, true), Struct_1(true, true, true), Struct_1(false, false, true));

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 12863i);

var<private> global4: Struct_1 = Struct_1(false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global3 = ~(~vec2<i32>(i32(-1i) * -6592i, countOneBits(-u_input.d.x)));
    global3 = firstLeadingBit(vec2<i32>(~(~firstLeadingBit(-1i)), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global3.x, u_input.d.x, 2147483647i)), -2147483647i)));
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xz), 15u)];
    var var_1 = vec4<u32>(46050u, u_input.c, ~u_input.a, max(4294967295u | ~max(u_input.a, 1u), 1u));
    global4 = global2[_wgslsmith_index_u32(reverseBits(10753u), 15u)];
    return 2845i;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(true, true, !(true | arg_0.b));
    var var_1 = -2147483647i;
    global0 = countOneBits(~u_input.b.x);
    global0 = 34076u;
    var var_2 = 1i;
    return Struct_1(any(!vec3<bool>(true, true, arg_0.c)) == var_0.b, false || ((u_input.d.x & global3.x) >= max(func_3(Struct_1(false, var_0.c, true), arg_0, arg_0, Struct_1(var_0.a, arg_0.a, false)), select(0i, u_input.d.x, arg_0.b))), global4.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = i32(-1i) * -_wgslsmith_mod_i32(arg_0.x, _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-1i, global3.x)));
    global0 = ((30827u | u_input.b.x) & ~1u) ^ u_input.b.x;
    let var_1 = func_2(global2[_wgslsmith_index_u32(52183u, 15u)], firstTrailingBit(u_input.d.x >> (countOneBits(~42977u) % 32u)));
    let var_2 = func_2(var_1, global3.x);
    var var_3 = Struct_1(_wgslsmith_add_i32(firstTrailingBit(var_0), global3.x & -1i) < u_input.d.x, false, any(select(!(!vec4<bool>(true, global4.b, true, true)), !select(vec4<bool>(global4.a, var_1.b, false, var_1.b), vec4<bool>(false, arg_1.c, var_1.b, var_2.a), var_1.a), all(vec2<bool>(true, true)) & select(true, true, true))));
    return countOneBits(-firstTrailingBit(abs(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~(1i ^ u_input.d.x), global3.x), select(func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(89827i, 2147483647i, global3.x, global3.x), vec4<i32>(u_input.d.x, 2147483647i, -1i, u_input.d.x), vec4<i32>(-59335i, 65615i, u_input.d.x, 2461i)), Struct_1(global4.c, true, true)), 31753i, ~1i == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 29675i, -1i), vec4<i32>(-2147483647i, -3538i, global3.x, 202i)))), func_1(~(reverseBits(vec4<i32>(-1i, -7794i, global3.x, u_input.d.x)) << (~vec4<u32>(4294967295u, u_input.c, u_input.a, u_input.c) % vec4<u32>(32u))), func_2(func_2(global2[_wgslsmith_index_u32(1u, 15u)], -4857i & global3.x), -global3.x | _wgslsmith_dot_vec3_i32(u_input.d, u_input.d))));
    let var_1 = u_input.c;
    let var_2 = Struct_1(any(select(select(select(vec4<bool>(true, global4.c, global4.a, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, global4.b, true)), vec4<bool>(false, true, global4.a, global4.b), all(vec2<bool>(global4.c, global4.c))), vec4<bool>(all(vec3<bool>(true, global4.c, true)), -56234i < global3.x, true, true), global4.a)), global4.c, global4.b);
    var var_3 = _wgslsmith_f_op_f32(-1390f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(19793u, firstLeadingBit(22230u), u_input.a, _wgslsmith_mult_u32(u_input.b.x, ~4294967295u)), u_input.b.x);
}

