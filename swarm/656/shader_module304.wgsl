struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-29236i, vec3<u32>(1u, 9905u, 0u)), Struct_1(-1i, vec3<u32>(36789u, 86781u, 0u)), Struct_1(-4317i, vec3<u32>(0u, 1u, 66417u)), Struct_1(-34673i, vec3<u32>(78816u, 1u, 29400u)), Struct_1(-13734i, vec3<u32>(0u, 3948u, 1u)), Struct_1(50784i, vec3<u32>(61554u, 4294967295u, 4833u)), Struct_1(41126i, vec3<u32>(4294967295u, 4150u, 4294967295u)), Struct_1(1817i, vec3<u32>(1u, 26665u, 4294967295u)), Struct_1(i32(-2147483648), vec3<u32>(58362u, 0u, 43988u)), Struct_1(-25401i, vec3<u32>(2688u, 21161u, 56968u)), Struct_1(5280i, vec3<u32>(1u, 459u, 30282u)), Struct_1(-1i, vec3<u32>(1u, 4294967295u, 39612u)), Struct_1(9316i, vec3<u32>(96363u, 111656u, 17451u)), Struct_1(199i, vec3<u32>(18486u, 3975u, 1u)), Struct_1(1i, vec3<u32>(4548u, 93595u, 31069u)), Struct_1(31509i, vec3<u32>(18540u, 4294967295u, 60185u)), Struct_1(0i, vec3<u32>(69773u, 20153u, 21657u)), Struct_1(0i, vec3<u32>(42587u, 0u, 0u)), Struct_1(-12399i, vec3<u32>(0u, 43510u, 36489u)), Struct_1(-19808i, vec3<u32>(2227u, 0u, 39659u)), Struct_1(i32(-2147483648), vec3<u32>(1u, 0u, 3570u)), Struct_1(18947i, vec3<u32>(22748u, 4294967295u, 1u)), Struct_1(0i, vec3<u32>(6017u, 30173u, 32393u)), Struct_1(3198i, vec3<u32>(1u, 21210u, 50595u)), Struct_1(35547i, vec3<u32>(2055u, 15041u, 1u)), Struct_1(-12490i, vec3<u32>(9502u, 4294967295u, 55353u)));

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool) -> f32 {
    global1 = array<Struct_1, 9>();
    let var_0 = false;
    let var_1 = vec2<u32>(12269u, ~firstLeadingBit(u_input.c));
    global0 = array<Struct_1, 26>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 9u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) + -580f);
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_1(~((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -23695i, 11479i, u_input.a), vec4<i32>(-1i, -7889i, u_input.a, u_input.a)) >> (min(4294967295u, arg_0) % 32u)) & 1i), vec3<u32>(104304u, abs(u_input.c), _wgslsmith_sub_u32(~1u, min(u_input.c, 0u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_0, ~45127u, 0u), vec3<u32>(firstTrailingBit(12539u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0, 6840u), vec3<u32>(30139u, arg_0, 34191u)), abs(41848u))));
    global1 = array<Struct_1, 9>();
    let var_1 = select(~(~vec2<i32>(u_input.a, var_0.a) & _wgslsmith_mod_vec2_i32(vec2<i32>(4233i, 11147i), vec2<i32>(8890i, -2147483647i))) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(27652u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(5965u, var_0.b.x), var_0.b.xy)) | vec2<u32>(40311u, _wgslsmith_dot_vec2_u32(vec2<u32>(56548u, 1u), vec2<u32>(u_input.b, 4294967295u)))) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(firstLeadingBit(u_input.a), _wgslsmith_add_i32(1i, 0i)) >> (var_0.b.zy % vec2<u32>(32u))), select(select(vec2<bool>(true, true), vec2<bool>(-1000f > arg_1, 22645u == var_0.b.x), false), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !vec2<bool>(select(false, true, false), true)));
    let var_2 = global0[_wgslsmith_index_u32(~(abs(~1u) >> (arg_0 % 32u)), 26u)];
    return 13416u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b, u_input.c, u_input.b)), min(vec3<u32>(u_input.c ^ 0u, _wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_add_u32(68640u, u_input.b)), vec3<u32>(u_input.b, _wgslsmith_sub_u32(74651u, 0u), func_3(u_input.b, -1000f)))));
    global1 = array<Struct_1, 9>();
    global0 = array<Struct_1, 26>();
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(u_input.a, max(0i, _wgslsmith_mult_i32(i32(-1i) * -5425i, firstTrailingBit(u_input.a))), -20719i), -u_input.a, abs(u_input.a), 7671i);
    let var_2 = Struct_1(var_0.a >> ((_wgslsmith_mult_u32(~88437u, var_0.b.x) << (_wgslsmith_clamp_u32(1u, 13476u, 0u) % 32u)) % 32u), ~vec3<u32>(abs(u_input.b), ~21036u, firstLeadingBit(firstLeadingBit(14072u))));
    return Struct_1(_wgslsmith_clamp_i32(u_input.a & abs(1i), _wgslsmith_mult_i32(max(countOneBits(var_2.a), 37764i), u_input.a), min(1i, var_0.a)), _wgslsmith_add_vec3_u32(select(vec3<u32>(81835u, ~24182u, _wgslsmith_mod_u32(u_input.b, 8259u)), _wgslsmith_div_vec3_u32(var_0.b, var_0.b), select(false, true, true)), _wgslsmith_mult_vec3_u32(reverseBits(var_2.b), min(var_0.b, vec3<u32>(u_input.b, 32900u, u_input.b))) << (vec3<u32>(~57751u, u_input.b, countOneBits(18053u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a;
    global1 = array<Struct_1, 9>();
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, firstTrailingBit(countOneBits(_wgslsmith_div_u32(u_input.b, arg_0.b.x)) | ~42712u), 4294967295u >> (_wgslsmith_div_u32(~(arg_0.b.x << (42932u % 32u)), u_input.b) % 32u)), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 78063i), vec2<i32>(-2644i, u_input.a)) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~(vec2<i32>(-76358i, 0i) & vec2<i32>(2147483647i, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(!select(true, true, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true)))));
    let var_2 = func_4(global0[_wgslsmith_index_u32(~98995u, 26u)], func_2());
    let var_3 = abs(-reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(6131i, 1i, var_2.a, u_input.a), vec4<i32>(21029i, var_2.a, 2147483647i, var_2.a)))) | ~abs(vec4<i32>(u_input.a, ~var_2.a, u_input.a ^ 1i, var_2.a));
    let var_4 = false;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(min(-647f, _wgslsmith_f_op_f32(f32(-1f) * -190f)))))), _wgslsmith_f_op_f32(round(-1677f)), all(select(!vec2<bool>(var_4, var_4), select(vec2<bool>(true, true), vec2<bool>(var_4, var_4), select(vec2<bool>(false, true), vec2<bool>(var_4, var_4), var_4)), var_4 && var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(-3071i, -_wgslsmith_div_i32(-12242i, var_2.a) >> (40316u % 32u), u_input.a);
}

