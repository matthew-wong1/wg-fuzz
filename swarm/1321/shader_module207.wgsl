struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(44851u);

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(13486u), Struct_1(25862u), Struct_1(1u), Struct_1(46075u), Struct_1(19897u), Struct_1(5330u), Struct_1(0u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(0u), Struct_1(113496u));

var<private> global3: i32 = 84809i;

var<private> global4: array<bool, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = arg_2;
    let var_1 = vec2<bool>(!(select(0i, min(u_input.b, -86229i), false) == -1i), global4[_wgslsmith_index_u32(~16024u, 32u)]);
    var var_2 = Struct_1(0u);
    let var_3 = select(select(select(vec2<bool>(true, true), var_1, true), var_1, any(vec3<bool>(all(vec3<bool>(false, global4[_wgslsmith_index_u32(13559u, 32u)], var_1.x)), var_1.x != false, global4[_wgslsmith_index_u32(1u, 32u)] || true))), var_1, vec2<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, false, true), false), vec3<bool>(var_1.x, true, true)))));
    var_0 = global2[_wgslsmith_index_u32(var_2.a, 17u)];
    return _wgslsmith_mod_vec4_i32(abs(abs(vec4<i32>(u_input.c & -10955i, u_input.a >> (var_0.a % 32u), _wgslsmith_add_i32(u_input.c, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 9600i, 1i))))), firstTrailingBit(~vec4<i32>(84651i, -u_input.b, i32(-1i) * -23229i, min(-1i, u_input.b))));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, ~_wgslsmith_div_u32(1u, 1u)), firstLeadingBit(min(_wgslsmith_add_vec2_u32(arg_0.zz, arg_0.yy), vec2<u32>(arg_0.x, 1u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, ~19959u), firstLeadingBit(arg_0.wz)) % vec2<u32>(32u)));
    let var_1 = Struct_1(~(~_wgslsmith_sub_u32(firstLeadingBit(global0.a), 10496u)));
    let var_2 = _wgslsmith_dot_vec4_i32(func_3(arg_0.wx, vec3<f32>(-666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-897f, 603f)) - -898f), 360f), Struct_1(1u)), max(vec4<i32>(~(-16643i), _wgslsmith_clamp_i32(-u_input.b, ~29658i, -u_input.b), -51881i, reverseBits(0i)), vec4<i32>(-2147483647i, firstTrailingBit(i32(-1i) * -21589i), -_wgslsmith_mod_i32(u_input.a, -60470i), u_input.a | -11397i)));
    let var_3 = abs(_wgslsmith_div_vec2_u32(abs(countOneBits(vec2<u32>(arg_0.x, 0u))), arg_0.xw));
    var var_4 = (~(~(arg_0 & arg_0)) >> (~(vec4<u32>(var_0.x, 1u, 4294967295u, 4294967295u) & ~arg_0) % vec4<u32>(32u))) >> (vec4<u32>(arg_0.x | var_1.a, max(~min(1u, var_1.a), ~global0.a), arg_0.x, 1u) % vec4<u32>(32u));
    return !vec3<bool>(all(vec3<bool>(select(false, false, global4[_wgslsmith_index_u32(global0.a, 32u)]), global4[_wgslsmith_index_u32(15521u, 32u)], !global4[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_add_i32(~u_input.c, _wgslsmith_sub_i32(u_input.b, -1i)) >= -2147483647i, any(vec4<bool>(all(vec3<bool>(false, false, false)), !global4[_wgslsmith_index_u32(4294967295u, 32u)], any(vec2<bool>(global4[_wgslsmith_index_u32(arg_0.x, 32u)], global4[_wgslsmith_index_u32(0u, 32u)])), false & global4[_wgslsmith_index_u32(4294967295u, 32u)])));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = arg_2.x;
    global2 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_mod_i32(~abs(-11940i), u_input.c);
    global4 = array<bool, 32>();
    let var_2 = any(!func_2(~countOneBits(vec4<u32>(global0.a, 22876u, global0.a, global0.a))));
    return arg_2.xwz;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    global1 = arg_0;
    var var_0 = global2[_wgslsmith_index_u32(global0.a, 17u)];
    global4 = array<bool, 32>();
    var_0 = Struct_1(global0.a);
    global2 = array<Struct_1, 17>();
    return global2[_wgslsmith_index_u32(~var_0.a, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 32>();
    let var_0 = u_input.a >> (global0.a % 32u);
    global1 = var_0;
    global0 = func_4(u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(!vec2<bool>(global4[_wgslsmith_index_u32(51006u, 32u)], global4[_wgslsmith_index_u32(0u, 32u)]), 0u, vec4<f32>(667f, -1434f, 1000f, -1545f), select(vec2<bool>(global4[_wgslsmith_index_u32(12419u, 32u)], true), vec2<bool>(global4[_wgslsmith_index_u32(global0.a, 32u)], false), vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1656f, -366f, 492f)))), global4[_wgslsmith_index_u32(~0u | global0.a, 32u)])))));
    global4 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(42551i, var_0, reverseBits(var_0), -38313i | var_0)), ~(-vec3<i32>(-21522i, 62848i, var_0) << (~vec3<u32>(global0.a, global0.a, 1u) % vec3<u32>(32u))) << (select(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, 40450u, 0u), abs(vec3<u32>(0u, global0.a, 1u))), max(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(global0.a, 39987u, global0.a)), vec3<bool>(all(vec3<bool>(false, global4[_wgslsmith_index_u32(global0.a, 32u)], true)), all(vec2<bool>(false, false)), true)) % vec3<u32>(32u)));
}

