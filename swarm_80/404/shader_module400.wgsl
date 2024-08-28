struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(800f, 0u));

var<private> global1: vec3<u32> = vec3<u32>(29458u, 0u, 2027u);

var<private> global2: array<f32, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_4) -> bool {
    global1 = ~u_input.d;
    global1 = vec3<u32>(u_input.a.x, 66864u, 15002u);
    global1 = abs(~u_input.d);
    var var_0 = ~u_input.a.wy;
    let var_1 = select(arg_1, !(!vec4<bool>(true, u_input.c != global0.a.b, arg_2 | arg_1.x, false)), select(!vec4<bool>(arg_3.a, false, false, arg_1.x || true), !select(select(vec4<bool>(arg_3.b, arg_3.a, arg_2, arg_1.x), vec4<bool>(arg_1.x, false, arg_2, false), arg_1), select(arg_1, vec4<bool>(true, true, arg_3.b, false), true), arg_1), arg_1));
    return any(var_1.yyw);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    return Struct_3(u_input.b.x, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false)), !(37886u >= global1.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(621f, global0.a.a, -573f)), vec4<bool>(true, false, false, true), true, Struct_4(false, true))), false), _wgslsmith_add_vec2_i32(-u_input.b & u_input.b, vec2<i32>(-17897i, -9525i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = -firstTrailingBit(reverseBits(vec3<i32>(arg_2.x, u_input.b.x, -1i)));
    global1 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~countOneBits(~u_input.d), u_input.d), _wgslsmith_sub_vec3_u32(u_input.d, select(~min(u_input.d, vec3<u32>(global1.x, global1.x, global1.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, global0.a.b, 4294967295u), vec3<u32>(19418u, arg_0.x, 19194u)), select(!arg_1.b, arg_1.b, func_2(vec4<u32>(18041u, arg_0.x, 7180u, global0.a.b)).b))));
    global2 = array<f32, 31>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 31u)] + 1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(265f, global2[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.a, 342f)) - global2[_wgslsmith_index_u32(0u, 31u)]))) - global2[_wgslsmith_index_u32(8476u, 31u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1370f + global0.a.a)) + _wgslsmith_f_op_f32(-1567f + _wgslsmith_f_op_f32(max(-764f, -828f)))), 265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-399f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(4294967295u, 31u)])))))) * vec3<f32>(1f, -110f, _wgslsmith_f_op_f32(trunc(862f))));
    return vec2<bool>(arg_1.b.x, arg_1.b.x);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec3<u32> {
    global2 = array<f32, 31>();
    var var_0 = Struct_4(all(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), func_4(~vec2<u32>(4294967295u, global1.x), func_2(u_input.a), arg_3 << (global1.zy % vec2<u32>(32u))), countOneBits(arg_2.x) <= func_2(u_input.a).c.x)), true);
    let var_1 = func_2(vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.a.x, ~(arg_0.a.b & 38861u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, ~arg_1.a.b), 32435u), global1.x));
    global1 = _wgslsmith_mult_vec3_u32(~u_input.d, select(u_input.d, ~reverseBits(vec3<u32>(85445u, 18134u, arg_1.a.b)), true));
    let var_2 = vec3<i32>(44990i, 1i, -var_1.c.x >> (45697u % 32u));
    return ~(~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_u32(select(vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(global0.a.b, 4294967295u, global1.x, 1u), vec4<bool>(true, false, false, true)), vec4<u32>(52132u, 1u, u_input.c, 0u)), 64693u), select(u_input.a.wwx, select(firstLeadingBit(vec3<u32>(1u, 48051u, 4294967295u)), ~vec3<u32>(5603u, global1.x, 19152u), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), 0u <= _wgslsmith_add_u32(global1.x, 0u)), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 21366i != ~u_input.b.x)), firstLeadingBit(firstTrailingBit(func_1(Struct_5(Struct_1(global2[_wgslsmith_index_u32(global0.a.b, 31u)], 127267u), 1287f), Struct_2(Struct_1(global0.a.a, 1u)), vec2<i32>(u_input.b.x, u_input.b.x), u_input.b))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.a))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a - global2[_wgslsmith_index_u32(reverseBits(~13467u), 31u)])), _wgslsmith_div_f32(506f, _wgslsmith_f_op_f32(f32(-1f) * -552f)));
    var var_1 = 0i;
    var_1 = u_input.b.x;
    var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(912f - global2[_wgslsmith_index_u32(global0.a.b, 31u)]))), global0.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d | u_input.d, firstTrailingBit(max(max(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x)), firstTrailingBit(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)))));
}

