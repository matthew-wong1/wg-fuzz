struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(36148u, 949f, 14668u)), Struct_2(Struct_1(5882u, 1325f, 106970u)), Struct_2(Struct_1(43575u, -200f, 1u)), Struct_2(Struct_1(1u, -220f, 126918u)), Struct_2(Struct_1(70887u, 1166f, 23962u)), Struct_2(Struct_1(0u, -1000f, 1u)), Struct_2(Struct_1(4178u, 203f, 5522u)), Struct_2(Struct_1(0u, 843f, 18433u)), Struct_2(Struct_1(0u, -664f, 4740u)), Struct_2(Struct_1(10784u, -290f, 73682u)), Struct_2(Struct_1(1u, -302f, 17077u)), Struct_2(Struct_1(39041u, -135f, 4294967295u)), Struct_2(Struct_1(1u, 155f, 7962u)), Struct_2(Struct_1(0u, -1000f, 31935u)), Struct_2(Struct_1(11096u, 1449f, 4294967295u)), Struct_2(Struct_1(1u, 1068f, 1u)), Struct_2(Struct_1(0u, -2270f, 0u)));

var<private> global1: array<vec4<bool>, 30>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = 9553i;
    var var_1 = Struct_5(true, -1378f, true, select(-select(max(u_input.b, vec2<i32>(7517i, arg_0)), u_input.b, vec2<bool>(true, false)), reverseBits(abs(_wgslsmith_mod_vec2_i32(u_input.b, u_input.b))), vec2<bool>(true, true)), Struct_1(~u_input.c, arg_1.b, _wgslsmith_div_u32(arg_1.a, arg_1.c & arg_1.c)));
    let var_2 = vec2<u32>(~arg_1.a, ~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(var_1.e.c, u_input.c, arg_1.a)), ~(~vec3<u32>(arg_1.c, 26993u, arg_1.a))));
    global0 = array<Struct_2, 17>();
    let var_3 = Struct_5(false, var_1.b, all(!(!(!vec3<bool>(true, var_1.a, var_1.a)))), abs(_wgslsmith_mod_vec2_i32(var_1.d, ~vec2<i32>(27254i, 30639i))), var_1.e);
    return ~firstTrailingBit(4294967295u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1513f, _wgslsmith_f_op_f32(f32(-1f) * -352f))), 1u));
    var var_1 = !global1[_wgslsmith_index_u32(var_0.a.a, 30u)];
    var_0 = Struct_2(var_0.a);
    var var_2 = arg_2;
    global1 = array<vec4<bool>, 30>();
    return Struct_1(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~7734i, _wgslsmith_div_i32(u_input.a, 32004i), countOneBits(u_input.b.x), u_input.a >> (4294967295u % 32u)), (vec4<i32>(11758i, -8620i, u_input.b.x, 1i) ^ vec4<i32>(u_input.a, u_input.b.x, -7851i, -6154i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(50352u, u_input.c, var_0.a.c, u_input.c), vec4<u32>(u_input.c, 16128u, 4294967295u, 46070u)) % vec4<u32>(32u))), var_0.a), 1478f, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.c, ~var_0.a.c), _wgslsmith_add_vec2_u32(~vec2<u32>(16734u, var_0.a.a), ~vec2<u32>(var_0.a.a, 4294967295u))), select(countOneBits(~vec2<u32>(var_0.a.a, 0u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(var_0.a.a, 22446u), vec2<bool>(false, arg_0)), vec2<u32>(u_input.c, var_0.a.a) ^ vec2<u32>(u_input.c, var_0.a.c)), arg_0)));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(37089u, u_input.c), _wgslsmith_mult_u32(reverseBits(u_input.c), 1u)), -1428f, ~(~(~0u))), func_2(!any(vec3<bool>(true, false, true)) | true, _wgslsmith_f_op_f32(min(741f, 952f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-796f, -299f)), _wgslsmith_f_op_f32(1146f + -1163f), true)), _wgslsmith_div_f32(1395f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1140f, 578f)))), select(vec2<bool>(_wgslsmith_add_u32(u_input.c, 1u) >= _wgslsmith_mult_u32(47262u, u_input.c), true), vec2<bool>(true, true), vec2<bool>(any(global1[_wgslsmith_index_u32(4294967295u, 30u)]) != select(false, true, false), true)));
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(var_0.a.c, 30u)], global0[_wgslsmith_index_u32(1u, 17u)]);
    var var_2 = ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 32615u, var_0.b.a), vec3<u32>(4294967295u, var_1.b.a.a, var_0.b.a) ^ vec3<u32>(var_1.b.a.c, var_0.a.a, 6948u), vec3<u32>(4294967295u, 4294967295u, 1u) & vec3<u32>(var_0.a.a, var_0.b.a, u_input.c))));
    var var_3 = var_0;
    let var_4 = global1[_wgslsmith_index_u32(var_3.b.a, 30u)];
    return Struct_3(vec4<bool>(false || (-2147483647i == u_input.b.x), var_4.x, var_3.c.x, var_3.c.x), Struct_2(var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !(!(!select(var_0.a.xxy, !vec3<bool>(var_0.a.x, var_0.a.x, true), select(var_0.a.yxz, var_0.a.xwy, var_0.a.x))));
    var var_2 = Struct_5(all(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(any(var_0.a), var_1.x, _wgslsmith_f_op_f32(-var_0.b.a.b)).c, var_0.b.a.a), 30u)]), var_0.b.a.b, var_0.a.x || any(var_1.xx), vec2<i32>(5611i << (select(var_0.b.a.c, u_input.c, var_0.a.x) % 32u), -u_input.a), func_1().b.a);
    var_1 = var_0.a.wzz;
    let var_3 = Struct_3(select(!global1[_wgslsmith_index_u32(var_0.b.a.a, 30u)], select(vec4<bool>(var_1.x, var_1.x, var_2.a, var_0.a.x), var_0.a, vec4<bool>(!var_0.a.x, var_2.d.x == 47808i, true, select(true, true, true))), var_2.c && all(!vec2<bool>(var_0.a.x, true))), Struct_2(var_2.e));
    let var_4 = func_1().b;
    let var_5 = vec2<bool>(var_2.d.x <= _wgslsmith_add_i32(2147483647i, var_2.d.x & var_2.d.x), true && !select(!var_2.c, var_2.a, var_2.c));
    var var_6 = Struct_4(Struct_1(~(~4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1256f)) + -624f))), 11922u), Struct_1(4294967295u, _wgslsmith_f_op_f32(floor(var_3.b.a.b)), ~var_2.e.a), !func_1().a.zw);
    global0 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_mult_vec4_i32(max(firstTrailingBit(vec4<i32>(2147483647i, -4275i, 16788i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, var_2.d.x), vec4<i32>(var_2.d.x, u_input.b.x, 10846i, -11357i))) ^ firstLeadingBit(-vec4<i32>(var_2.d.x, u_input.a, var_2.d.x, 0i)), vec4<i32>(abs(~u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -21794i, 1i, u_input.b.x), ~vec4<i32>(2147483647i, u_input.b.x, -2147483647i, 8696i)), -1i)), ~(min(vec4<i32>(1i, 25249i, -2147483647i, var_2.d.x) << (vec4<u32>(0u, var_3.b.a.c, var_2.e.c, 54748u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(37734i, 15924i, 1i, var_2.d.x), vec4<i32>(var_2.d.x, u_input.a, var_2.d.x, var_2.d.x))) | -(~vec4<i32>(u_input.b.x, -43941i, -2147483647i, 9889i))), _wgslsmith_f_op_f32(-var_2.e.b));
}

