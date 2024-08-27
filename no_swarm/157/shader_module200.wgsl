struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1732f;

var<private> global1: Struct_4;

var<private> global2: Struct_4;

var<private> global3: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~arg_1.a.a.a.x, 33059i, _wgslsmith_mult_i32(i32(-1i) * -1i, u_input.b)), ~vec4<i32>(firstLeadingBit(arg_0), arg_1.a.a.a.x, _wgslsmith_add_i32(16127i, 37486i), _wgslsmith_sub_i32(global2.a.a.a.x, global1.c.x))) | u_input.a;
    var var_1 = Struct_4(global1.a, 1282f, -vec4<i32>(arg_0 << (~0u % 32u), 1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.b), arg_1.a.a.a.xy), _wgslsmith_mult_i32(arg_0, global1.c.x) | ~(-39798i)));
    global3 = true;
    var var_2 = !all(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(true, true, true)));
    global1 = arg_1;
    return !(global1.a.a.a.x == arg_0);
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = vec3<bool>(!all(vec4<bool>(false, -1599f > global1.b, true, any(vec2<bool>(false, false)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec4<bool>(true, false, false, false)), true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))))), true);
    global3 = !var_0.x;
    var var_1 = vec4<i32>(2147483647i, global1.c.x, 38428i, u_input.b);
    let var_2 = vec3<bool>(false, any(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), !(!(!any(vec3<bool>(var_0.x, var_0.x, false)))));
    global3 = select(!var_2.x, !(var_2.x | func_3(firstTrailingBit(var_1.x), Struct_4(global1.a, 1051f, global2.c))), var_0.x | (any(vec4<bool>(var_2.x, var_0.x, false, false)) | var_2.x));
    return Struct_4(global2.a, arg_0, global1.c);
}

fn func_1() -> Struct_3 {
    var var_0 = true;
    global2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1368f))))));
    global2 = func_2(1000f);
    global2 = func_2(_wgslsmith_f_op_f32(-global1.b));
    let var_1 = 1i;
    return Struct_3(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b;
    var var_0 = 587f;
    let var_1 = !(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(0u, 25523u, 4294967295u), 9036u) != (1u | abs(select(4294967295u, 14806u, true))));
    let var_2 = func_1();
    var var_3 = Struct_4(Struct_2(global2.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1048f, _wgslsmith_f_op_f32(f32(-1f) * -591f))), _wgslsmith_f_op_f32(f32(-1f) * -1566f)), u_input.a >> ((vec4<u32>(var_2.a >> (var_2.a % 32u), ~var_2.a, 33712u, ~4294967295u) >> (abs(vec4<u32>(var_2.a, var_2.a, 1u, var_2.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_2.a)), reverseBits(vec2<u32>(var_2.a, 0u))), ~min(vec2<u32>(29146u, var_2.a), vec2<u32>(92797u, var_2.a)))), vec3<i32>(firstLeadingBit(var_3.c.x), -1716i, ~(u_input.a.x << (57338u % 32u))));
}

