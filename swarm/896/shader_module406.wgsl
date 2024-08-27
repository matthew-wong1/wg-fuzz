struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<f32> = vec2<f32>(-419f, -694f);

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-335f, -312f) - vec2<f32>(-118f, 1088f)), vec2<f32>(1007f, 697f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 2209f) - vec2<f32>(global1.x, 684f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -1039f), vec2<f32>(-956f, global1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(112f, -1147f)))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -651f) + _wgslsmith_f_op_f32(-var_0.x)))), 833f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), global0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-346f, -1259f, var_0.x, 820f), vec4<f32>(var_0.x, -1544f, 634f, global1.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 601f, global1.x, 1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -1000f, var_0.x, -632f))))))));
    var var_2 = u_input.a.zyw;
    var var_3 = Struct_1(true, ~u_input.a.zxw & u_input.a.zxx);
    return select(vec3<bool>(true, !global0.x, !(!all(vec2<bool>(false, true)))), !select(vec3<bool>(!global0.x, select(var_3.a, true, global0.x), select(false, var_3.a, global0.x)), vec3<bool>(global0.x, select(var_3.a, true, global0.x), global0.x), vec3<bool>(false, global0.x, select(var_3.a, var_3.a, global0.x))), select(select(vec3<bool>(var_3.a, true, global0.x), vec3<bool>(true, var_3.a, !var_3.a), !vec3<bool>(global0.x, var_3.a, global0.x)), !(!vec3<bool>(false, true, var_3.a)), vec3<bool>(select(var_1.x <= var_0.x, true, !var_3.a), var_3.a, global0.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = Struct_3(!func_3(), abs(reverseBits(_wgslsmith_add_vec2_u32(arg_0, arg_0))), arg_2);
    var var_1 = Struct_1(any(select(vec3<bool>(select(false, arg_2.a, var_0.a.x), true, true), vec3<bool>(var_0.a.x, false, true), true)), vec3<i32>(-2147483647i, var_0.c.b.x >> (1u % 32u), var_0.c.b.x));
    let var_2 = Struct_4(1u, Struct_3(vec3<bool>(var_1.a, 374f <= global1.x, any(select(vec4<bool>(var_0.c.a, global0.x, global0.x, false), vec4<bool>(false, var_0.c.a, global0.x, arg_2.a), var_1.a))), _wgslsmith_div_vec2_u32(arg_0, ~arg_0), arg_2), func_3().xx, Struct_3(var_0.a, vec2<u32>(15778u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, arg_0.x), vec3<u32>(var_0.b.x, arg_0.x, var_0.b.x))), arg_2));
    global0 = vec2<bool>(false, !(!var_1.a));
    let var_3 = arg_2.b;
    return _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.b.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32306u, arg_0.x, 4294967295u), vec4<u32>(1u, 1u, 0u, 12865u)), ~1u)) << ((reverseBits(select(var_0.b, vec2<u32>(4294967295u, 1u), false)) >> (~vec2<u32>(var_0.b.x, 11691u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(var_2.b.b.x & ~120713u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, var_2.b.b.x), vec4<u32>(var_0.b.x, arg_0.x, arg_0.x, var_0.b.x))), ~var_2.a));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(select(vec3<bool>(true, u_input.c > u_input.a.x, !any(vec4<bool>(true, false, true, global0.x))), vec3<bool>(true, false, true), true), max(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 41311u)), _wgslsmith_mult_vec2_u32(vec2<u32>(40395u, 50996u), vec2<u32>(83101u, 1u))), select(~vec2<u32>(1u, 1u), ~vec2<u32>(0u, 28886u) >> (func_2(vec2<u32>(47126u, 12194u), vec2<f32>(-436f, global1.x), Struct_1(global0.x, u_input.a.ywy), 252f) % vec2<u32>(32u)), vec2<bool>(true, true))), Struct_1((_wgslsmith_clamp_i32(2147483647i, u_input.a.x, global3.x) | global3.x) != (~u_input.a.x ^ u_input.b.x), vec3<i32>(1i, u_input.b.x, _wgslsmith_mod_i32(-6320i, ~global3.x))));
    return Struct_1(func_3().x, u_input.a.yww);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<i32>(firstLeadingBit(-2147483647i << (~abs(4294967295u) % 32u)), 0i, firstTrailingBit(countOneBits(-1i)));
    var var_0 = func_1();
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(countOneBits(1u), select(55187u, 63467u, var_0.a)) & _wgslsmith_clamp_u32(0u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 61671u), vec2<u32>(36814u, 43209u))), ~1u, 1u), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(34889u, 0u, 4294967295u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(53636u, 0u, 0u), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(firstLeadingBit(min(vec3<u32>(2679u, 4294967295u, 0u), vec3<u32>(29424u, 39197u, 75633u))))), ~(~vec3<u32>(1u, func_2(vec2<u32>(0u, 4294967295u), vec2<f32>(160f, 396f), Struct_1(true, vec3<i32>(u_input.a.x, global3.x, 2147483647i)), global1.x).x, 0u)));
    global0 = select(!vec2<bool>(any(select(vec2<bool>(var_0.a, global0.x), global2[_wgslsmith_index_u32(var_1.x, 26u)], true)), true), select(vec2<bool>(global0.x, (var_1.x | var_1.x) > (1u & var_1.x)), !(!vec2<bool>(var_0.a, true)), func_3().yz), false);
    var_0 = Struct_1(any(vec3<bool>(global0.x, var_1.x >= _wgslsmith_clamp_u32(var_1.x, 43124u, var_1.x), var_0.a)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x))), global1.x), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1249f))))), global1.x, _wgslsmith_sub_i32(~2147483647i, global3.x), u_input.a);
}

