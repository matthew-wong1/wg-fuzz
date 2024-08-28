struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f))));
    var var_1 = vec2<u32>(u_input.b.x, ~u_input.b.x);
    global0 = -1625f;
    var var_2 = Struct_1(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_3 = Struct_1(select(var_2.a, var_2.a, var_2.a));
    return var_3.a;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_1(!(!func_3()));
    var var_1 = ~(-7680i);
    let var_2 = Struct_2(var_0, ~(-select(-vec4<i32>(arg_0, -45059i, -14979i, arg_1.x), ~vec4<i32>(2147483647i, 1i, 2147483647i, 17724i), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), Struct_1(vec4<bool>(true, true, !any(vec2<bool>(var_0.a.x, var_0.a.x)), true)), reverseBits(-_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-16021i, arg_1.x, arg_0)), _wgslsmith_add_vec3_i32(vec3<i32>(3238i, 1i, arg_1.x), vec3<i32>(arg_0, arg_0, -2147483647i)))), u_input.b.x);
    let var_3 = ~u_input.b;
    var var_4 = vec3<u32>(1u, ~35633u, ~(~59466u));
    return -430f;
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) + _wgslsmith_f_op_f32(func_2(u_input.c.x, vec2<i32>(arg_0.x, arg_0.x)))));
    let var_0 = false;
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 35145i, u_input.a.x << (1u % 32u), arg_0.x), vec4<i32>(58695i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, u_input.a.x), arg_0.x), ~(arg_0.x & u_input.a.x)), _wgslsmith_add_i32(-1i, ~(-u_input.c.x)), abs(1i)));
    global1 = 1u;
    let var_2 = Struct_2(Struct_1(select(!(!vec4<bool>(var_0, false, var_0, var_0)), vec4<bool>(select(true, var_0, true), true, any(vec2<bool>(false, true)), !var_0), vec4<bool>(u_input.b.x != 1u, var_0, !var_0, false))), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_sub_i32(0i, var_1.x)) ^ -_wgslsmith_mult_i32(arg_0.x, var_1.x), abs(arg_0.x), _wgslsmith_dot_vec3_i32(arg_0, ~firstLeadingBit(vec3<i32>(u_input.c.x, var_1.x, arg_0.x))), -(var_1.x >> ((u_input.b.x << (u_input.b.x % 32u)) % 32u))), Struct_1(!func_3()), vec3<i32>(abs(_wgslsmith_mult_i32(-2147483647i, -1i)), -2147483647i | ~firstLeadingBit(var_1.x), ~(-49855i)), ~(~u_input.b.x << (reverseBits(u_input.b.x) % 32u)));
    return vec4<bool>((_wgslsmith_clamp_u32(countOneBits(u_input.b.x), u_input.b.x, var_2.e) != ~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, var_2.e)) | (any(var_2.c.a.wxx) || var_0), any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), var_2.c.a.x), func_3().xzw, vec3<bool>(var_2.c.a.x, true, true)), var_2.a.a.xzw, !var_0)), all(select(vec4<bool>(true, var_0, true, var_0), var_2.a.a, true)), any(vec3<bool>(var_0, true, any(var_2.a.a.yz) & var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!func_1(vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x))));
    var var_1 = _wgslsmith_mod_u32(~firstLeadingBit(countOneBits(firstTrailingBit(25078u))), 92178u);
    global2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.b), reverseBits(vec3<u32>(20663u, u_input.b.x, u_input.b.x)))), _wgslsmith_clamp_u32(10544u, ((u_input.b.x | 42272u) << (u_input.b.x % 32u)) ^ ~(~4294967295u), ~(~(~1u))), ~(~u_input.b.x << (4045u % 32u)));
    global1 = 25080u;
    let var_2 = Struct_2(var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, -14524i), _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.c.x, -5723i, u_input.a.x, u_input.c.x), vec4<i32>(-45055i, u_input.a.x, 31315i, -8108i), var_0.a), ~vec4<i32>(u_input.c.x, -38675i, 16949i, -1i))) << (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), var_0.a.x), vec4<u32>(u_input.b.x, 0u, 7289u, 0u)) % vec4<u32>(32u)), var_0, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-u_input.a.x, firstLeadingBit(23032i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-35193i, u_input.a.x, 0i)), vec3<i32>(0i, u_input.a.x, u_input.a.x) ^ vec3<i32>(-39131i, u_input.a.x, 15044i))), -u_input.c.x, countOneBits(u_input.a.x)), u_input.b.x);
    var var_3 = Struct_2(Struct_1(var_2.c.a), (_wgslsmith_div_vec4_i32(var_2.b, vec4<i32>(var_2.d.x, u_input.a.x, 7421i, -7959i)) & var_2.b) ^ ~firstTrailingBit(vec4<i32>(63755i, u_input.a.x, u_input.c.x, u_input.c.x)), var_0, select(-abs(var_2.d), var_2.d, var_0.a.zwx), 1u);
    global1 = var_2.e;
    let var_4 = Struct_1(vec4<bool>(!(!(u_input.a.x > 1i)), !func_3().x, !(!(u_input.b.x <= u_input.b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(-2147483647i)), 1000f);
}

