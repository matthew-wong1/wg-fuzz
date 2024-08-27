struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, 1i, -1i));

var<private> global2: i32;

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = -1002f;
    let var_1 = Struct_1(global1.a);
    var var_2 = arg_1;
    global4 = array<vec4<i32>, 6>();
    var_2 = false;
    return 10215u;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = Struct_2(any(vec3<bool>(false, true, any(vec2<bool>(true, true)))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -397f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f - -302f) * -1035f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = _wgslsmith_add_i32(-(i32(-1i) * -var_0.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(64725u, 6u)], vec4<i32>(0i, -31060i, 0i, _wgslsmith_sub_i32(arg_0.a.x, 2147483647i))), _wgslsmith_clamp_i32(-global3.a.x, _wgslsmith_dot_vec2_i32(-global1.a.yz, arg_0.a.yy), abs(reverseBits(arg_0.a.x)))));
    var var_3 = 1u;
    return ~(~(~(~(~vec3<u32>(4294967295u, arg_1, 4294967295u)))));
}

fn func_1() -> Struct_2 {
    global4 = array<vec4<i32>, 6>();
    global0 = select(vec3<u32>(func_2(vec4<i32>(1i, ~(-2147483647i), global1.a.x, ~global1.a.x), true, ~vec3<u32>(u_input.a, 1u, global0.x), ~firstTrailingBit(vec3<u32>(u_input.a, 56766u, 1u))), ~4294967295u, _wgslsmith_mult_u32(44476u, _wgslsmith_dot_vec2_u32(~global0.zy, vec2<u32>(u_input.a, global0.x)))), ~vec3<u32>(countOneBits(u_input.a) ^ ~global0.x, reverseBits(8123u), _wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, global0.x))), true);
    var var_0 = (countOneBits(select(vec3<i32>(-2147483647i, -38791i, global3.a.x), ~vec3<i32>(global1.a.x, 2147483647i, global1.a.x), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))) & (abs(vec3<i32>(global1.a.x, 25440i, global1.a.x) >> (vec3<u32>(37201u, 51707u, 21801u) % vec3<u32>(32u))) | ~vec3<i32>(44244i, global3.a.x, global1.a.x))) << (_wgslsmith_add_vec3_u32(vec3<u32>(23831u, ~(55666u & global0.x), ~u_input.a ^ ~6793u), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 4294967295u, 43883u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, global0.x, 30994u)), func_3(Struct_1(global3.a), global0.x)), ~(~vec3<u32>(4294967295u, 1u, 1u)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))) % vec3<u32>(32u));
    global4 = array<vec4<i32>, 6>();
    var var_1 = false;
    return Struct_2(any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(true, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global3 = arg_2;
    var var_0 = arg_2;
    global3 = Struct_1(_wgslsmith_div_vec3_i32(arg_2.a, _wgslsmith_clamp_vec3_i32(countOneBits(~global3.a), vec3<i32>(2380i, 0i, global1.a.x | -17006i), arg_2.a)));
    var var_1 = !arg_1.a;
    var var_2 = arg_1;
    return Struct_1(global1.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !(!(!vec3<bool>(true, arg_2.a, true)));
    global0 = arg_0.xxw;
    var var_1 = ~vec3<u32>(1u, arg_0.x, global0.x);
    var_1 = vec3<u32>(~arg_0.x, countOneBits(global0.x), global0.x | global0.x);
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(global1.a.x, 2147483647i), -1i), global3.a.x << (reverseBits(~(~global0.x)) % 32u));
    return Struct_2(var_0.x);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    global4 = array<vec4<i32>, 6>();
    let var_0 = func_4(func_1(), Struct_2(arg_0.a), Struct_1(global3.a));
    var var_1 = arg_0;
    var var_2 = var_0;
    let var_3 = func_5(vec4<u32>(~firstLeadingBit(arg_1), ~arg_1, 4294967295u, 0u), arg_2, func_1());
    return StorageBuffer(func_4(func_1(), arg_0, func_4(var_3, func_1(), func_4(arg_0, Struct_2(false), arg_2))).a | ~(~global1.a), vec4<u32>(~16433u, 5153u | global0.x, ~17280u, _wgslsmith_div_u32(arg_1, _wgslsmith_div_u32(1u, arg_1 << (arg_1 % 32u)))), 7180i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, global0.x, global0.x, 77716u), vec4<u32>(306u, global0.x, u_input.a, 65425u)), func_4(Struct_2(global0.x >= 48115u), func_1(), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(21201i, global1.a.x, global3.a.x), vec3<i32>(global1.a.x, 25293i, -13524i)))), Struct_2(true)), global0.x, func_4(Struct_2(true), func_1(), func_4(func_1(), Struct_2(true), Struct_1(select(vec3<i32>(global1.a.x, -63763i, global1.a.x), vec3<i32>(global1.a.x, 2147483647i, global3.a.x), false)))), -785f);
}

