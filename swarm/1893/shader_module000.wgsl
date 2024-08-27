struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<bool> {
    let var_0 = -1i;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 4u)];
    global1 = var_1.a;
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(u_input.d, _wgslsmith_clamp_u32(~u_input.d, _wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(0u, u_input.d)), 30682u) >> (1u % 32u)), u_input.a.x);
    global0 = array<Struct_2, 4>();
    return !global1.a;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(select(select(func_3(), vec3<bool>(false, global1.a.x, global1.b), !vec3<bool>(false, global1.b, false)), !(!vec3<bool>(false, global1.b, false)), vec3<bool>(true, true, !global1.b)), any(global1.a)), global1.a, !vec4<bool>(true || !global1.b, !all(global1.a), true, global1.a.x), u_input.b, true);
    let var_1 = global0[_wgslsmith_index_u32(~u_input.e.x, 4u)];
    var var_2 = Struct_3(Struct_1(global1.a, false), vec3<bool>(var_1.a.a.x, global1.a.x, global1.b), var_0.c, ~((vec2<i32>(var_0.d.x, -2147483647i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(45965i, var_0.d.x), vec2<i32>(u_input.b.x, -28234i))) ^ max(countOneBits(vec2<i32>(var_0.d.x, u_input.b.x)), vec2<i32>(-1i, 43196i) & var_0.d)), global1.b | global1.b);
    var var_3 = var_2.a;
    global2 = array<Struct_2, 6>();
    return Struct_3(Struct_1(vec3<bool>(!(global1.b && true), false, true), !all(select(vec2<bool>(var_1.a.a.x, false), var_2.c.wy, var_0.e))), !vec3<bool>(select(all(vec4<bool>(true, var_0.a.b, true, false)), true, false), global1.b, all(var_0.c)), !select(!select(vec4<bool>(true, true, var_1.a.b, var_3.a.x), vec4<bool>(var_2.b.x, true, false, var_0.e), var_1.a.a.x), var_2.c, true), -(~u_input.b), (_wgslsmith_add_u32(_wgslsmith_add_u32(18871u, u_input.a.x), 1u) >= min(u_input.d & 79768u, 45750u | u_input.d)) | true);
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global2 = array<Struct_2, 6>();
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> bool {
    var var_0 = ~vec4<u32>(firstLeadingBit(25763u), 1u | u_input.c.x, 4294967295u, ~(~66422u & u_input.d));
    global1 = arg_3.a;
    global2 = array<Struct_2, 6>();
    var var_1 = Struct_4(func_2(), !select(!(!vec3<bool>(global1.a.x, arg_0.a.a.x, false)), vec3<bool>(arg_3.c.x, true, var_0.x < 28254u), !(!vec3<bool>(arg_3.b.x, global1.a.x, false))), Struct_2(Struct_1(!func_1(vec3<bool>(arg_3.a.b, false, false)).c.wyy, arg_3.e), _wgslsmith_sub_i32(~arg_1.x, _wgslsmith_mult_i32(~arg_0.d.x, max(71979i, 9115i)))), arg_0);
    var_1 = Struct_4(func_1(!(!func_2().a.a)), !(!vec3<bool>(!var_1.c.a.a.x, any(vec4<bool>(arg_3.a.b, arg_0.e, arg_3.c.x, var_1.b.x)), true)), Struct_2(func_2().a, -29584i), arg_0);
    return arg_3.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -287f;
    global1 = Struct_1(vec3<bool>((-39898i ^ _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -52173i)) == ~_wgslsmith_dot_vec3_i32(vec3<i32>(32784i, 14985i, u_input.b.x), vec3<i32>(35864i, u_input.b.x, u_input.b.x)), global1.a.x, global1.b), func_4(func_1(!global1.a), vec4<i32>(countOneBits(u_input.b.x), -1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 1i), -(u_input.b.x << (u_input.d % 32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, 20695i, u_input.b.x)), 2147483647i, u_input.b.x), func_2()));
    global2 = array<Struct_2, 6>();
    global0 = array<Struct_2, 4>();
    let var_1 = _wgslsmith_div_i32(u_input.b.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), select(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(24461i, 1i, 1i), firstLeadingBit(vec3<i32>(40402i, var_1, var_1)))), abs(min(_wgslsmith_add_vec3_i32(vec3<i32>(var_1, u_input.b.x, 51236i), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), vec3<i32>(var_1, var_1, var_1))), select(global1.a, !global1.a, vec3<bool>(0u <= u_input.e.x, !global1.b, global1.b))));
}

