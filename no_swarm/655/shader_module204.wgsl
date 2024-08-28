struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -32915i, 0i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: array<u32, 28>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(126751u), Struct_2(4294967295u), Struct_2(1u), Struct_2(34719u), Struct_2(4294967295u), Struct_2(33984u), Struct_2(1u), Struct_2(0u), Struct_2(0u), Struct_2(54670u), Struct_2(18022u), Struct_2(0u), Struct_2(25622u), Struct_2(31599u), Struct_2(41008u), Struct_2(39342u), Struct_2(70052u), Struct_2(71125u), Struct_2(85631u), Struct_2(1u), Struct_2(1u), Struct_2(0u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = ~arg_0.a.a;
    var var_1 = !select(vec4<bool>(arg_1.b.x, arg_1.b.x, !(!arg_0.b.x), !arg_1.b.x && true), select(!(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)), !select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), all(!vec4<bool>(true, false, arg_1.b.x, arg_0.b.x))), select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_1.b.x), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), vec4<bool>(arg_0.b.x, false, arg_1.b.x, false), arg_0.b.x), !vec4<bool>(true, false, false, arg_0.b.x)), vec4<bool>(true, all(vec2<bool>(false, arg_1.b.x)), false, 1u > arg_0.a.a), select(select(vec4<bool>(arg_0.b.x, arg_1.b.x, false, arg_0.b.x), vec4<bool>(true, arg_1.b.x, arg_0.b.x, false), vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x)), !vec4<bool>(false, arg_0.b.x, false, false), arg_1.b.x || true)));
    var_1 = vec4<bool>(var_1.x, arg_0.b.x, true, all(vec2<bool>(u_input.a.x != ~u_input.a.x, true)));
    let var_2 = select(_wgslsmith_add_vec3_u32(~abs(vec3<u32>(arg_1.a.a, 21935u, 96061u)), vec3<u32>(68159u, _wgslsmith_clamp_u32(arg_0.a.a, global2[_wgslsmith_index_u32(arg_1.a.a, 28u)], global2[_wgslsmith_index_u32(arg_0.a.a, 28u)]), firstTrailingBit(21044u))) ^ ((min(vec3<u32>(28697u, 26961u, arg_1.a.a), vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], arg_0.a.a)) << (vec3<u32>(arg_0.a.a, u_input.a.x, global2[_wgslsmith_index_u32(0u, 28u)]) % vec3<u32>(32u))) << (~(vec3<u32>(arg_0.a.a, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 60270u) ^ vec3<u32>(44042u, arg_1.a.a, arg_1.a.a)) % vec3<u32>(32u))), select(vec3<u32>(_wgslsmith_clamp_u32(~1u, 2749u, _wgslsmith_mod_u32(arg_1.a.a, u_input.a.x)), select(68468u, ~arg_0.a.a, var_1.x), ~16256u), max(~_wgslsmith_mult_vec3_u32(vec3<u32>(662u, 2037u, arg_0.a.a), vec3<u32>(global2[_wgslsmith_index_u32(86084u, 28u)], arg_0.a.a, global2[_wgslsmith_index_u32(arg_1.a.a, 28u)])), vec3<u32>(1u, 0u, _wgslsmith_mult_u32(4294967295u, u_input.a.x))), vec3<bool>(false, arg_1.b.x, any(vec2<bool>(true, var_1.x)))), var_1.x);
    global0 = ~(~firstLeadingBit(_wgslsmith_add_vec4_i32(abs(vec4<i32>(global0.x, 1168i, global0.x, 59415i)), ~vec4<i32>(4296i, global0.x, global0.x, 0i))));
    return vec4<bool>(false, true, firstLeadingBit(~_wgslsmith_sub_u32(arg_1.a.a, 83391u)) > ~1u, false);
}

fn func_2(arg_0: Struct_2) -> bool {
    global3 = array<Struct_2, 22>();
    var var_0 = Struct_1(-462f);
    let var_1 = func_3(Struct_3(arg_0, vec3<bool>(true, false, any(vec3<bool>(true, true, true)))), Struct_3(Struct_2(arg_0.a), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    global0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-44557i, 1i, global0.x, global0.x), vec4<i32>(-55201i, 18784i, 0i, 41950i)), reverseBits(-2147483647i), i32(-1i) * -1i, abs(_wgslsmith_sub_i32(global0.x, -9066i)));
    let var_2 = global0.x;
    return all(var_1.xz);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = vec4<bool>(false, false, all(vec4<bool>(true, true, func_2(Struct_2(52089u)), true)), all(vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true)), ~arg_0 > global2[_wgslsmith_index_u32(~arg_0, 28u)], true, true)));
    var var_1 = Struct_1(1206f);
    var var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(arg_0), ~107824u, 19740u), ~(~vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 4294967295u))), vec3<u32>(17275u, firstLeadingBit(~89854u), ~abs(u_input.a.x)));
    var var_3 = ~firstTrailingBit(~vec2<u32>(19000u, _wgslsmith_sub_u32(16869u, arg_0)));
    global2 = array<u32, 28>();
    return Struct_3(Struct_2(select(~12228u, 13132u, all(func_3(Struct_3(global3[_wgslsmith_index_u32(30114u, 22u)], vec3<bool>(false, false, var_0.x)), Struct_3(Struct_2(0u), vec3<bool>(var_0.x, true, true)))))), !(!var_0.zwz));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1076f + _wgslsmith_f_op_f32(-arg_1.a));
    global3 = array<Struct_2, 22>();
    global3 = array<Struct_2, 22>();
    global2 = array<u32, 28>();
    global1 = -10097i;
    return abs(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_i32(func_4(func_1(countOneBits(_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(1u, 28u)]))), Struct_1(-1073f), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 39310u), u_input.a)), -(~21300i));
    global3 = array<Struct_2, 22>();
    let var_0 = 0u;
    global1 = global0.x;
    global0 = reverseBits(select(vec4<i32>(global0.x, 18321i, max(-13612i, -1i), 21052i) << (select(~vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27189u, 28u)], 28u)], 69403u, 49744u), vec4<u32>(50687u, 0u, 0u, 1u), any(vec4<bool>(false, false, true, true))) % vec4<u32>(32u)), ~(vec4<i32>(-1i) * -vec4<i32>(-19347i, -1172i, -1i, global0.x)), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1865f)), _wgslsmith_div_f32(-1639f, -552f)))))), vec2<bool>(any(vec3<bool>(true, func_3(Struct_3(Struct_2(0u), vec3<bool>(false, false, false)), Struct_3(Struct_2(1u), vec3<bool>(false, true, false))).x, false)), !all(vec2<bool>(true, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 9908i, 9971i), global0.ywy), ~vec3<i32>(0i, global0.x, 72962i))), func_4(func_1(~_wgslsmith_div_u32(u_input.a.x, 18807u)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.a), var_1.a.a))), select(vec2<u32>(u_input.a.x, ~0u), u_input.a | vec2<u32>(16449u, 49962u), var_1.b)), vec2<i32>(-1i) * -max(-global0.zw, global0.yx), _wgslsmith_mult_i32(-9996i << (_wgslsmith_mult_u32(u_input.a.x, 54861u) % 32u), -2147483647i));
}

