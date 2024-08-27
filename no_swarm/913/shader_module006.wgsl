struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, any(vec3<bool>(true, true, false))), true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), true)), ~select(vec4<u32>(~72504u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(13267u, u_input.b, u_input.b)), ~u_input.b), ~min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<bool>(true, false, false, true)), abs(_wgslsmith_mult_i32(-u_input.a.x, u_input.a.x)));
    global0 = array<Struct_2, 15>();
    var var_1 = vec2<u32>(0u, _wgslsmith_add_u32(abs(u_input.b), 1u));
    global0 = array<Struct_2, 15>();
    var var_2 = vec2<i32>(var_0.c, -45559i);
    return vec3<bool>(false, true, var_0.a.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(false, true, abs(arg_1 << (0u % 32u)) >= arg_2.x), firstTrailingBit(arg_2), _wgslsmith_mult_i32(u_input.a.x, ~(-653i)));
    global0 = array<Struct_2, 15>();
    let var_1 = Struct_3(Struct_1(var_0.a, vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_1), ~vec2<u32>(24551u, 4294967295u)), _wgslsmith_clamp_u32(61771u, var_0.b.x, var_0.b.x), ~0u), 0i));
    var var_2 = ~arg_1;
    var_0 = Struct_1(!var_1.a.a, min(_wgslsmith_sub_vec4_u32(max(select(var_0.b, var_1.a.b, vec4<bool>(var_1.a.a.x, true, var_0.a.x, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(106280u, 16549u, var_1.a.b.x, 1u), vec4<u32>(arg_1, arg_1, 72288u, arg_2.x), vec4<u32>(4294967295u, 77131u, 22389u, 4294967295u))), var_0.b), var_0.b), -2147483647i);
    return Struct_1(!select(vec3<bool>(all(vec4<bool>(true, var_1.a.a.x, true, true)), false, all(var_0.a)), vec3<bool>(all(vec3<bool>(var_0.a.x, var_1.a.a.x, var_1.a.a.x)), var_0.a.x | true, !var_0.a.x), !func_3(arg_0, vec2<f32>(-162f, 220f), 769f)), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(var_1.a.b, vec4<u32>(0u, 4294967295u, 1u, 1u)), var_1.a.b), 2147483647i);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(arg_3.a.a, ~(~vec4<u32>(52016u, 1u, arg_2.a.b.x, u_input.b)) >> (vec4<u32>(93093u, ~firstTrailingBit(arg_3.a.b.x), ~abs(arg_3.a.b.x), arg_2.a.b.x) % vec4<u32>(32u)), -select(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), firstLeadingBit(u_input.a.x << (0u % 32u)), !(arg_1 >= 1447f)));
    global0 = array<Struct_2, 15>();
    var var_1 = Struct_3(func_2(_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, var_0.c), countOneBits(~var_0.c)), ~_wgslsmith_add_u32(~u_input.b, 94559u), arg_2.a.b));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, (u_input.b >> (arg_2.a.b.x % 32u)) << (32648u % 32u)), 15u)];
    var var_3 = func_2(_wgslsmith_add_i32(49948i, reverseBits(u_input.a.x)) ^ 4633i, 4294967295u, vec4<u32>(0u, _wgslsmith_mult_u32(~58944u, ~u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_2.a.b, arg_3.a.b), ~vec4<u32>(u_input.b, 4294967295u, 0u, var_1.a.b.x)), 1u)).a.x || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-141f + _wgslsmith_f_op_f32(min(-1000f, arg_1)))));
    return var_2.a;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_2(func_4(false, -324f, Struct_3(func_2(abs(-14646i), u_input.b, arg_1)), Struct_2(func_2(-17281i, 4294967295u, _wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(u_input.b, arg_1.x, arg_1.x, 17505u), arg_1)))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.b.x, var_0.a.b.x), 15u)];
    let var_1 = Struct_1(vec3<bool>(all(select(var_0.a.a.yx, vec2<bool>(true, arg_0), arg_2.yx)), false, func_3(abs(_wgslsmith_mult_i32(-2147483647i, var_0.a.c)), _wgslsmith_div_vec2_f32(vec2<f32>(677f, -511f), vec2<f32>(1161f, -277f)), -1000f).x), var_0.a.b, var_0.a.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(55155u, var_0.a.b.x, 0u, var_0.a.b.x) & ~vec4<u32>(4294967295u, var_0.a.b.x, 66996u, u_input.b), arg_1 << (~arg_1 % vec4<u32>(32u))) % 32u));
    let var_2 = select(vec4<bool>(var_1.b.x >= var_0.a.b.x, all(select(vec2<bool>(true, true), vec2<bool>(arg_2.x, arg_2.x), !arg_2.yw)), all(vec3<bool>(true, true, true)), false), select(vec4<bool>(!all(arg_2), true, true, func_4(!var_1.a.x, -121f, Struct_3(Struct_1(arg_2.yyy, vec4<u32>(var_1.b.x, 0u, 4294967295u, var_0.a.b.x), -10155i)), global0[_wgslsmith_index_u32(var_1.b.x, 15u)]).a.x), select(vec4<bool>(true, func_4(var_1.a.x, 505f, Struct_3(Struct_1(var_1.a, vec4<u32>(55520u, u_input.b, 1u, var_1.b.x), var_0.a.c)), Struct_2(var_0.a)).a.x, 1u >= u_input.b, true), vec4<bool>(true, false, true, arg_0), select(select(arg_2, vec4<bool>(var_1.a.x, false, arg_0, true), arg_2.x), !vec4<bool>(false, arg_0, false, false), true)), var_1.a.x), !(!select(arg_2, vec4<bool>(arg_0, var_1.a.x, var_0.a.a.x, false), arg_2)));
    let var_3 = var_0.a.b.x;
    return any(!var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, false)), all(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, true))), true), vec4<bool>(any(vec4<bool>(false, true, false, false)) && false, ~u_input.b >= 65284u, true, false), false), !func_1(true, ~vec4<u32>(u_input.b, u_input.b, 1u, 18028u), vec4<bool>(true, true, true, true)) | !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)));
    let var_1 = vec3<u32>(~abs(u_input.b) ^ 36279u, 1u ^ u_input.b, reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(31235u, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(16771u, 11526u, 0u), ~vec3<u32>(u_input.b, 1u, u_input.b)))));
    let var_2 = global0[_wgslsmith_index_u32(min(var_1.x, var_1.x), 15u)];
    let var_3 = select(select(!select(vec4<bool>(var_2.a.a.x, false, var_2.a.a.x, var_0.x), vec4<bool>(var_2.a.a.x, false, false, false), !vec4<bool>(var_0.x, var_2.a.a.x, var_0.x, var_0.x)), !(!(!vec4<bool>(var_2.a.a.x, false, false, false))), vec4<bool>(false, false, var_0.x, true)), select(select(!select(vec4<bool>(var_0.x, var_2.a.a.x, true, false), vec4<bool>(true, var_0.x, true, var_2.a.a.x), false), !select(vec4<bool>(false, true, var_2.a.a.x, true), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_2.a.a.x, true, false, var_2.a.a.x)), !vec4<bool>(var_2.a.a.x, true, var_0.x, var_2.a.a.x)), vec4<bool>(!var_0.x | var_0.x, var_0.x & true, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(u_input.a.x, -5785i)) >= var_2.a.c), select(select(vec4<bool>(var_0.x, var_2.a.a.x, var_0.x, true), select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_2.a.a.x, var_0.x, var_2.a.a.x, false), var_0.x), func_2(var_2.a.c, 57536u, var_2.a.b).a.x), vec4<bool>(var_2.a.a.x || true, var_0.x, !var_0.x, -1i == u_input.a.x), true)), select(!select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, true))), select(vec4<bool>(!var_2.a.a.x, true, true, false), vec4<bool>(var_2.a.a.x, var_0.x, all(vec2<bool>(var_2.a.a.x, var_0.x)), all(vec4<bool>(var_0.x, false, var_2.a.a.x, true))), var_2.a.a.x), true));
    let var_4 = var_2.a.c;
    global0 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(var_2.a.b.xzz, vec3<u32>(11607u, 42812u, 0u)) ^ u_input.b), _wgslsmith_clamp_u32(~(var_1.x ^ 1u), var_2.a.b.x, ~u_input.b)));
}

