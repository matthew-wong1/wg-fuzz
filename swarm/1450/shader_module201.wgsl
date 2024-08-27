struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-8024i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(6922i, 1i));

var<private> global1: array<vec2<f32>, 29>;

var<private> global2: vec2<f32> = vec2<f32>(870f, 392f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(true, countOneBits(countOneBits(~vec3<u32>(1u, 1u, 0u))));
    return var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(900f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f), global2.x), firstLeadingBit(_wgslsmith_mult_vec3_u32(func_3(), arg_0.b)));
    global1 = array<vec2<f32>, 29>();
    var var_1 = reverseBits(reverseBits(vec3<i32>(u_input.b.x | u_input.b.x, 39506i, firstLeadingBit(-5872i >> (arg_0.b.x % 32u)))));
    let var_2 = vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(ceil(global2.x))))) + global2.x), global2.x);
    global1 = array<vec2<f32>, 29>();
    return vec4<bool>(select(var_0.a, all(select(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a), false), vec2<bool>(true, true), false)), var_0.a), any(select(!(!vec2<bool>(true, var_0.a)), select(select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), var_0.a), vec2<bool>(false, arg_0.a), select(vec2<bool>(arg_0.a, var_0.a), vec2<bool>(var_0.a, false), arg_0.a)), vec2<bool>(all(vec4<bool>(var_0.a, true, false, true)), arg_0.a))), arg_0.a, var_2.x == _wgslsmith_f_op_f32(-var_2.x));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = any(!vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false))));
    var var_1 = func_2(Struct_1(all(vec2<bool>(any(vec3<bool>(false, true, true)), true)), ~vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(1u, 0u, 1u)));
    var_1 = select(select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(false, any(vec4<bool>(false, var_1.x, true, var_1.x)), var_1.x, !var_1.x), vec4<bool>(any(vec2<bool>(var_1.x, var_1.x)), global2.x == global2.x, !var_1.x, any(vec3<bool>(false, var_1.x, var_1.x)))), vec4<bool>(any(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), !(var_1.x || var_1.x), true, true), vec4<bool>(var_1.x, select(true, -2187f != global2.x, var_1.x), !any(var_1.xzz), any(vec2<bool>(true, true)))), select(vec4<bool>(false, false, true, all(select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false)))), func_2(Struct_1(var_1.x, vec3<u32>(14365u, 0u, 1u)), ~vec3<u32>(4294967295u, 119224u, 1u)), func_2(Struct_1(var_1.x, func_3()), max(abs(vec3<u32>(1480u, 30399u, 1u)), countOneBits(vec3<u32>(1u, 4294967295u, 0u))))), any(vec2<bool>(true, true)));
    var_0 = var_1.x;
    let var_2 = vec2<bool>(false, true);
    return -(u_input.b << (vec2<u32>(firstLeadingBit(53962u), _wgslsmith_mult_u32(1u, ~1u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(global2.x, -613f);
    var var_0 = min(reverseBits(min(abs(firstTrailingBit(vec2<i32>(u_input.a.x, 0i))), func_1(~u_input.a.x))), vec2<i32>(abs(15658i), 1i));
    let var_1 = var_0.x >> (_wgslsmith_mod_u32(~(~countOneBits(15306u)), min(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 46879u), vec2<u32>(16519u, 0u)), 1u), 4871u)) % 32u);
    global1 = array<vec2<f32>, 29>();
    let var_2 = Struct_1(any(!func_2(Struct_1(true, vec3<u32>(10088u, 4294967295u, 4294967295u)), min(vec3<u32>(5180u, 1u, 20644u), vec3<u32>(0u, 17093u, 70844u)))), min(vec3<u32>(4294967295u, ~1u, 210u), select(~vec3<u32>(0u, 70256u, 4294967295u), vec3<u32>(~1u, _wgslsmith_div_u32(1u, 1u), max(54959u, 0u)), select(select(true, false, true), false, any(vec4<bool>(false, false, false, true))))));
    var var_3 = abs(min(select(vec4<u32>(var_2.b.x, 0u, 18919u, var_2.b.x), vec4<u32>(4294967295u, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(var_2.a, var_2.a, false, true)), reverseBits(vec4<u32>(var_2.b.x, 79205u, var_2.b.x, 4294967295u)))) << (~firstLeadingBit(abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, var_2.b.x), vec4<u32>(var_2.b.x, 1u, 0u, 50230u)))) % vec4<u32>(32u));
    global1 = array<vec2<f32>, 29>();
    let var_4 = _wgslsmith_mod_vec3_u32(var_2.b, reverseBits(var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_0.x, u_input.b.x, min(u_input.b.x, u_input.a.x), ~var_0.x) << (vec4<u32>(var_3.x, min(countOneBits(var_3.x), ~80490u), firstLeadingBit(var_2.b.x), _wgslsmith_mult_u32(38288u, countOneBits(21071u))) % vec4<u32>(32u)), vec4<u32>(var_2.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_4.x, var_3.x)), 1u, max(var_2.b.x, ~104036u)), ~(_wgslsmith_div_u32(var_3.x, 37222u) >> (var_3.x % 32u)), _wgslsmith_sub_u32(select(~1u, var_4.x, true), 16032u)), vec2<i32>(select(select(var_0.x, 0i, var_2.a), -44078i << (var_3.x % 32u), true) & -_wgslsmith_sub_i32(-8226i, var_0.x), -2084i));
}

