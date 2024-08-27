struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 30>;

var<private> global2: u32;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<bool>(false, true)), -30958i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false)), 40735i, Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true)), 6327i, Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false)), -16452i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), 45015i, Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true)), 36745i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true)), -1i, Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true)), -26502i, Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true)), i32(-2147483648), Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false)), 18267i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, true)), 2147483647i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true)), -1i, Struct_1(vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true)), 38017i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false)), 0i, Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true)), 2147483647i, Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false)), -17439i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, true)), 2147483647i, Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, false)), -6457i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, true)), 8703i, Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true)), -49628i, Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true)), -34552i, Struct_1(vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false)), 6013i, Struct_1(vec2<bool>(true, false))));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    var var_0 = ~(-(max(23839i, ~arg_1.b) >> ((firstLeadingBit(72483u) << (~u_input.a % 32u)) % 32u)));
    let var_1 = Struct_2(Struct_1(!select(vec2<bool>(arg_1.c.a.x, arg_0.c.a.x), vec2<bool>(true, arg_1.c.a.x), !arg_0.c.a.x)), u_input.c, Struct_1(select(select(vec2<bool>(arg_2, arg_1.c.a.x), arg_1.c.a, !arg_1.c.a.x), select(select(arg_1.a.a, arg_1.a.a, vec2<bool>(true, true)), !arg_1.c.a, any(vec3<bool>(arg_2, true, arg_2))), vec2<bool>(false, true))));
    global3 = array<Struct_2, 22>();
    global2 = ~(~firstLeadingBit(u_input.a));
    var var_2 = var_1;
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b, 2147483647i, var_2.b), vec3<i32>(3465i, global0.x, min(-1i, abs(2147483647i))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    global0 = vec2<i32>(-1i) * -(~countOneBits(vec2<i32>(global0.x, -63381i)) | vec2<i32>(firstTrailingBit(arg_0), -2147483647i));
    var var_0 = -select(~vec2<i32>(u_input.d, 1i) >> (((vec2<u32>(u_input.a, 53440u) & vec2<u32>(u_input.a, 4294967295u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 72246u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(18125i ^ arg_0, _wgslsmith_sub_i32(u_input.c, arg_0)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.b, 2147483647i, global0.x), vec4<i32>(arg_0, arg_0, u_input.b, u_input.d)))), !(!(!arg_1.a.x)));
    var var_1 = abs(~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, var_0.x), vec2<i32>(global0.x, arg_0) | vec2<i32>(-1286i, u_input.b)), firstLeadingBit(select(vec2<i32>(global0.x, 0i), vec2<i32>(u_input.c, 0i), arg_1.a))));
    let var_2 = (firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), func_3(Struct_2(Struct_1(vec2<bool>(arg_1.a.x, false)), 11777i, Struct_1(arg_1.a)), Struct_2(arg_1, -1i, arg_1), arg_1.a.x), vec3<i32>(u_input.c, 1i, 2147483647i) | vec3<i32>(global0.x, 1i, -1i))) & (vec3<i32>(-5863i, select(u_input.b, 55608i, true), _wgslsmith_sub_i32(var_1.x, global0.x)) | -(vec3<i32>(2147483647i, -14229i, 0i) ^ vec3<i32>(2598i, -11886i, u_input.c)))) >> (vec3<u32>(u_input.a, 0u, 1u) % vec3<u32>(32u));
    let var_3 = !arg_1.a.x;
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(vec2<u32>(~func_2(7565i, Struct_1(arg_0.a.a)), ~(~4294967295u & _wgslsmith_dot_vec2_u32(arg_1.xz, arg_1.wz))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.a, 4294967295u), vec3<u32>(47709u, 4294967295u, u_input.a)), u_input.a) >> (reverseBits(~vec2<u32>(1u, arg_1.x)) % vec2<u32>(32u)), vec2<u32>(51658u, (432u | u_input.a) ^ ~arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, !select(all(vec4<bool>(true, true, true, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    global3 = array<Struct_2, 22>();
    let var_1 = ~(~vec3<u32>(1u, countOneBits(4294967295u), u_input.a));
    var var_2 = -2078i;
    var var_3 = (abs(select(~var_1.xx, func_1(Struct_2(Struct_1(vec2<bool>(var_0.x, var_0.x)), -54575i, Struct_1(vec2<bool>(true, true))), vec4<u32>(var_1.x, 1u, 85907u, u_input.a)), var_0.zy)) << (vec2<u32>(u_input.a, var_1.x) % vec2<u32>(32u))) >> (~(var_1.zz >> (var_1.zz % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_4 = global3[_wgslsmith_index_u32(~min(var_3.x, ~(~u_input.a << (var_1.x % 32u))), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xx, _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(112671u, u_input.a), _wgslsmith_sub_u32(abs(23802u), _wgslsmith_mult_u32(u_input.a, u_input.a))), firstTrailingBit(select(4294967295u, var_1.x, false)) | ~4294967295u), reverseBits(vec2<u32>(0u, func_2(firstTrailingBit(0i), var_4.a))));
}

