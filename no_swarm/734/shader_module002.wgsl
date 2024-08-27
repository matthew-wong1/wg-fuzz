struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 10>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<bool>(true, false, false), 1u, vec3<i32>(-1i, 17051i, -20901i)), Struct_1(vec3<bool>(false, true, false), 8423u, vec3<i32>(-13541i, -8131i, 11271i)), Struct_1(vec3<bool>(false, true, true), 4294967295u, vec3<i32>(-236i, 39553i, -1i)), Struct_1(vec3<bool>(false, true, false), 98713u, vec3<i32>(2147483647i, i32(-2147483648), 0i)), Struct_1(vec3<bool>(true, true, false), 2992u, vec3<i32>(1i, -14042i, 80853i)), Struct_1(vec3<bool>(false, false, false), 29218u, vec3<i32>(-1i, -1i, -242i)), Struct_1(vec3<bool>(true, false, true), 125647u, vec3<i32>(-24719i, 37684i, 15490i)), Struct_1(vec3<bool>(false, true, false), 9353u, vec3<i32>(-7705i, -1i, 1i)), Struct_1(vec3<bool>(false, true, false), 1u, vec3<i32>(-23633i, -1i, -57591i)), Struct_1(vec3<bool>(false, false, true), 1u, vec3<i32>(36933i, i32(-2147483648), 1715i)), Struct_1(vec3<bool>(true, true, false), 19775u, vec3<i32>(2147483647i, -1i, 1i)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<i32>(-1i, -1i, -1i)), Struct_1(vec3<bool>(false, true, true), 48106u, vec3<i32>(0i, -24022i, 2147483647i)), Struct_1(vec3<bool>(true, true, false), 17194u, vec3<i32>(42951i, -21259i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<i32>(1i, -1i, i32(-2147483648))), Struct_1(vec3<bool>(false, true, false), 70915u, vec3<i32>(59578i, 15333i, -2713i)), Struct_1(vec3<bool>(false, true, true), 4294967295u, vec3<i32>(-5975i, 0i, -39310i)), Struct_1(vec3<bool>(true, false, true), 0u, vec3<i32>(1i, 29827i, -5147i)), Struct_1(vec3<bool>(true, true, true), 21140u, vec3<i32>(-44558i, -1i, 0i)), Struct_1(vec3<bool>(false, true, true), 44074u, vec3<i32>(22450i, 759i, -20484i)), Struct_1(vec3<bool>(false, false, true), 0u, vec3<i32>(-9703i, -77340i, 48312i)), Struct_1(vec3<bool>(true, false, true), 22549u, vec3<i32>(62562i, -57295i, -1i)), Struct_1(vec3<bool>(true, false, true), 73131u, vec3<i32>(1i, 0i, -10113i)), Struct_1(vec3<bool>(false, true, false), 1u, vec3<i32>(68642i, 1i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, true), 4294967295u, vec3<i32>(14590i, i32(-2147483648), -29731i)), Struct_1(vec3<bool>(false, true, true), 4294967295u, vec3<i32>(0i, -1i, -1i)), Struct_1(vec3<bool>(true, true, true), 46952u, vec3<i32>(9210i, 15946i, 97i)));

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec3<bool>(false, false, true), 6009u, vec3<i32>(-31416i, -16169i, 40294i)), Struct_1(vec3<bool>(false, false, true), 4294967295u, vec3<i32>(17400i, 1i, 14394i)), vec3<i32>(-1i, -1i, -1i), 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = -1i;
    let var_1 = min(-5768i, 2147483647i);
    global3 = ~(~(~vec2<u32>(1u, 69740u) << (~vec2<u32>(global3.x, u_input.a) % vec2<u32>(32u))) << (~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 6269u), vec2<u32>(global3.x, global3.x)) % vec2<u32>(32u)));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~(~31324u))), 10u)];
    global1 = array<Struct_2, 10>();
    return select(var_2.b.a.x, !var_2.b.a.x || var_2.a.a.x, select(all(vec3<bool>(select(var_2.b.a.x, var_2.b.a.x, var_2.a.a.x), all(var_2.a.a.yz), true)), all(!(!vec2<bool>(false, var_2.b.a.x))), all(vec4<bool>(any(vec2<bool>(false, false)), true, true, true))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(vec3<bool>(true, func_3(), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false)))), max(global3.x, ~(~u_input.a)) ^ (71648u & _wgslsmith_div_u32(global3.x, 55262u)), -(vec3<i32>(~1i, _wgslsmith_clamp_i32(43270i, -17196i, 0i), 0i << (u_input.a % 32u)) & firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-44007i, 25497i, -48713i), vec3<i32>(15285i, 1i, 1i)))));
    var var_1 = 0i;
    var_1 = _wgslsmith_sub_i32(11623i, ~var_0.c.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1147f - -560f))))));
    var var_3 = select(!vec4<bool>(!(var_0.a.x && false), any(!vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), abs(u_input.a) <= ~u_input.a, true), !vec4<bool>(var_0.a.x || !var_0.a.x, !var_0.a.x, var_0.a.x, true), func_3());
    return global1[_wgslsmith_index_u32(u_input.a, 10u)];
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -742f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1352f))) + -451f))));
    let var_3 = select(vec4<bool>(select(var_0.a.a.x & func_2().b.a.x, true, true), !(true || !var_0.a.a.x), var_0.c.x <= abs(var_1.a.c.x & -109144i), true), select(vec4<bool>(var_0.b.a.x, !(var_1.a.a.x && true), var_0.b.a.x, var_1.b.a.x), select(select(!vec4<bool>(var_1.a.a.x, var_0.b.a.x, var_1.b.a.x, var_0.b.a.x), select(vec4<bool>(var_1.a.a.x, true, var_0.b.a.x, var_0.b.a.x), vec4<bool>(false, var_1.a.a.x, var_1.b.a.x, var_1.b.a.x), var_1.b.a.x), var_0.b.a.x & true), !(!vec4<bool>(var_1.a.a.x, true, true, var_0.b.a.x)), vec4<bool>(func_2().a.a.x, var_1.a.a.x, var_1.a.a.x, var_0.b.a.x)), !select(vec4<bool>(true, true, var_1.b.a.x, false), !vec4<bool>(var_1.a.a.x, true, var_1.a.a.x, false), vec4<bool>(var_1.a.a.x, var_1.a.a.x, true, var_1.b.a.x))), select(var_1.a.a.x, all(var_1.b.a), false));
    return select(-(vec3<i32>(-1i) * -vec3<i32>(var_1.d, var_1.a.c.x, var_1.d)) | -reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d, var_0.d, 2147483647i), vec3<i32>(var_0.c.x, 2147483647i, var_0.a.c.x))), var_1.a.c << ((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_1.a.b, 47440u) >> (vec3<u32>(arg_0.x, 0u, 0u) % vec3<u32>(32u)), ~vec3<u32>(var_1.b.b, arg_0.x, global3.x)) >> (vec3<u32>(1u, var_0.b.b << (arg_0.x % 32u), 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((vec3<i32>(1i, 1i, 1i) << ((reverseBits(vec3<u32>(global3.x, u_input.a, global3.x)) ^ countOneBits(vec3<u32>(global3.x, 31383u, 35960u))) % vec3<u32>(32u))) >> (vec3<u32>(1u, firstLeadingBit(4294967295u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global3.x, u_input.a), vec4<u32>(1u, global3.x, global3.x, u_input.a)))) % vec3<u32>(32u)));
    global2 = array<Struct_1, 27>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 27u)];
    global4 = array<Struct_2, 1>();
    var_0 = ~abs(max(firstTrailingBit(-var_1.c), func_1(~vec2<u32>(0u, 35061u))));
    let var_2 = var_1.a.x;
    var var_3 = ~_wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 0u) & vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(firstTrailingBit(vec2<u32>(1u, global3.x))));
    global4 = array<Struct_2, 1>();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)))) * -1278f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f - 1008f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(-10355i, func_1(vec2<u32>(var_3.x, 0u) << (vec2<u32>(55912u, global3.x) % vec2<u32>(32u))).x, false), firstTrailingBit(min(_wgslsmith_mod_i32(1i, var_1.c.x), var_0.x ^ -11819i)), 1i), vec2<u32>(var_1.b, ~var_1.b));
}

