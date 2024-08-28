struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(48178i), Struct_1(-1i), Struct_1(0i), Struct_1(0i), Struct_1(1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-31632i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(46700i), Struct_1(-1i), Struct_1(1i), Struct_1(0i), Struct_1(1i), Struct_1(22579i), Struct_1(i32(-2147483648)), Struct_1(12089i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(30148i), Struct_1(-17127i), Struct_1(i32(-2147483648)));

var<private> global2: vec2<u32> = vec2<u32>(113544u, 31949u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    global1 = array<Struct_1, 25>();
    global0 = Struct_1(~0i << (_wgslsmith_clamp_u32(4294967295u, global2.x, 42202u ^ global2.x) % 32u));
    global0 = Struct_1(~0i);
    var var_0 = vec4<u32>(reverseBits(_wgslsmith_div_u32(firstTrailingBit(u_input.b) & 0u, ~arg_0.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(34179u, global2.x, 1u), vec3<u32>(7542u, 28998u, 31581u)), abs(vec3<u32>(46132u, u_input.b, 0u)) & abs(vec3<u32>(0u, 1u, 144325u))), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_0.x, 107048u) ^ abs(vec3<u32>(arg_0.x, arg_0.x, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, 3014u), ~vec3<u32>(u_input.b, 4294967295u, 93167u), ~vec3<u32>(arg_0.x, 23571u, 13228u)))), _wgslsmith_mult_u32(~abs(u_input.b), ~(~global2.x)), ~4294967295u);
    let var_1 = Struct_1(u_input.a);
    return !(!vec2<bool>(_wgslsmith_f_op_f32(floor(-209f)) >= -1256f, true));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = max(abs(~min(_wgslsmith_sub_u32(4294967295u, arg_0), ~31318u)), 38562u);
    var var_1 = select(vec2<bool>(true, true), !func_3(vec2<u32>(~33766u, u_input.b)), select(vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), func_3(~vec2<u32>(u_input.b, 56536u)), true));
    var var_2 = Struct_1(u_input.a);
    var_2 = Struct_1(-1i);
    var var_3 = Struct_1(countOneBits((~(-32891i) << (~global2.x % 32u)) >> (global2.x % 32u)));
    return Struct_1(49981i);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(global2.x | ~(~u_input.b), 25u)];
    var var_1 = _wgslsmith_f_op_f32(abs(1170f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -443f))))));
    global0 = func_2(1u);
    global2 = reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, 6219u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(21237u, 37262u)));
    var var_2 = arg_1;
    return func_2(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(82056u, 39618u, 0u, 4294967295u)) ^ ~vec4<u32>(41102u, global2.x, u_input.b, u_input.b), select(vec4<u32>(~25201u, _wgslsmith_sub_u32(22182u, u_input.b), global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global2.x), vec2<u32>(global2.x, arg_0))), vec4<u32>(1u, ~u_input.b, arg_0, reverseBits(1u)), true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(max(~2147483647i, 2147483647i), -20107i, ~(u_input.a ^ u_input.a))));
    let var_1 = func_4(~22023u, func_2(~reverseBits(min(u_input.b, global2.x))));
    global2 = abs(firstTrailingBit(vec2<u32>(~(~u_input.b), ~(~1u))));
    let var_2 = vec4<bool>((global2.x > global2.x) & all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false))), all(vec4<bool>(true, true, true, true)), false, true);
    global0 = func_4(min(select(26009u, 1u, var_2.x), u_input.b), func_4(1u, Struct_1(var_0.a)));
    return vec3<bool>(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) == _wgslsmith_f_op_f32(sign(arg_1.x)), countOneBits(4294967295u) <= ~_wgslsmith_mod_u32(~global2.x, ~u_input.b), any(var_2.yzz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    var var_0 = !func_1(select(vec3<i32>(global0.a, u_input.a, global0.a), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-31954i, u_input.a, u_input.a), vec3<i32>(17302i, 2147483647i, global0.a), vec3<i32>(1i, -41402i, u_input.a)), reverseBits(vec3<i32>(global0.a, u_input.a, global0.a)), all(vec3<bool>(true, true, true))), vec3<bool>(true, true, select(true, false, false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, -1004f) * vec2<f32>(434f, -407f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(880f, -1102f)), vec2<bool>(true, true))));
    let var_1 = min(~vec4<u32>(~_wgslsmith_sub_u32(global2.x, 47627u), firstLeadingBit(4294967295u), _wgslsmith_add_u32(137951u >> (u_input.b % 32u), select(u_input.b, 1u, var_0.x)), u_input.b >> (0u % 32u)), select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 33859u, u_input.b, u_input.b), vec4<u32>(u_input.b, global2.x, 1u, global2.x))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global2.x, 0u) & vec4<u32>(global2.x, u_input.b, u_input.b, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 47535u, 4294967295u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)))), (func_1(vec3<i32>(u_input.a, 2147483647i, global0.a), vec2<f32>(-993f, 224f)).x | true) | var_0.x));
    let var_2 = 149f;
    var_0 = select(!vec3<bool>(false, true, var_0.x), vec3<bool>(false, 1f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))), !select(all(vec4<bool>(true, false, var_0.x, var_0.x)), var_0.x, all(var_0.zy))), false);
    var var_3 = func_2(44408u);
    let var_4 = global1[_wgslsmith_index_u32(0u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(~global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-262f + var_2), _wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(step(var_2, 1412f))), vec3<f32>(var_2, _wgslsmith_f_op_f32(min(var_2, 608f)), var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, 135f, _wgslsmith_f_op_f32(f32(-1f) * -407f), 1678f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, var_2, var_2, -2469f), vec4<f32>(590f, var_2, -1302f, 1579f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1098f, var_2, -168f, -2125f))))));
}

