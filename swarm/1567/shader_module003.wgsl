struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<u32>(102272u, 4294967295u, 82416u), vec3<f32>(1000f, 569f, -1405f), vec4<f32>(-120f, 1000f, -1000f, -565f));

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, false, true, true, false, false, false, true, true, false, false, false, true, false, true, true, false, true, false, false, true);

var<private> global2: array<vec2<f32>, 28>;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -37220i);

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = ~(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global0.b.yx, select(vec2<u32>(u_input.a, 66758u), global0.b.zz, vec2<bool>(global1[_wgslsmith_index_u32(45228u, 23u)], global1[_wgslsmith_index_u32(u_input.e, 23u)]))), vec2<u32>(54005u, _wgslsmith_add_u32(5413u, u_input.b))) | abs(global0.b.yz));
    let var_1 = Struct_1(!global0.a, _wgslsmith_mult_vec3_u32(~vec3<u32>(96359u, ~var_0.x, ~4294967295u), global0.b), global0.d.wzz, global0.d);
    var var_2 = -32737i;
    var var_3 = Struct_1(!select(true, select(!global0.a, !global1[_wgslsmith_index_u32(global0.b.x, 23u)], !var_1.a), true), global0.b, vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(round(var_1.d.x))), global0.d);
    global3 = -u_input.d;
    return var_3.d.zzz;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_i32(~(-(abs(u_input.d.x) | select(-48510i, global3.x, false))), ~2017i);
    var var_1 = ~_wgslsmith_dot_vec2_u32(~arg_1.b.xx, vec2<u32>(arg_1.b.x, ~(~61494u)));
    let var_2 = true;
    var var_3 = Struct_1(all(arg_0.yxy), arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), 1507f) - _wgslsmith_f_op_vec3_f32(func_3(global0.c))), _wgslsmith_f_op_vec4_f32(-global0.d));
    global3 = -vec2<i32>(firstLeadingBit(1i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(11688i, u_input.d.x), ~(~u_input.d.x), ~(global3.x & u_input.d.x)));
    return !(!(!select(arg_0.wzx, select(vec3<bool>(false, true, false), arg_0.xwx, vec3<bool>(arg_0.x, false, false)), select(vec3<bool>(arg_1.a, true, global1[_wgslsmith_index_u32(arg_1.b.x, 23u)]), arg_0.zzy, global0.a))));
}

fn func_1() -> bool {
    return any(select(!(!select(vec3<bool>(false, false, global0.a), vec3<bool>(global0.a, false, true), vec3<bool>(false, global0.a, false))), select(select(!vec3<bool>(global4.x, false, true), !vec3<bool>(global0.a, global0.a, false), func_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 23u)], true, false, global1[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 23u)], vec3<u32>(u_input.b, u_input.e, 4294967295u), vec3<f32>(-962f, -1034f, global0.d.x), global0.d))), vec3<bool>(all(vec4<bool>(global0.a, false, global4.x, true)), !global0.a, any(vec4<bool>(global0.a, global4.x, false, global4.x))), global0.a), select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(60298u, 1u, global0.b.x), 23u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 23u)], false), !select(vec3<bool>(global4.x, global4.x, global0.a), vec3<bool>(true, false, true), global0.a), 222f < global0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    global4 = !select(select(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.e, 23u)], true, true), !(!vec3<bool>(false, global0.a, global4.x)), true), vec3<bool>(select(select(true, global4.x, true), false, any(vec3<bool>(false, global4.x, global0.a))), global0.a, func_1()), !vec3<bool>(!global0.a, false, true));
    global3 = vec2<i32>(37706i, u_input.c);
    global0 = Struct_1(global0.a, max(abs(global0.b ^ (vec3<u32>(global0.b.x, 5614u, 4294967295u) << (vec3<u32>(global0.b.x, 48998u, 45247u) % vec3<u32>(32u)))), firstLeadingBit(~global0.b)), global0.d.yyz, global0.d);
    global2 = array<vec2<f32>, 28>();
    let var_0 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, min(abs(firstTrailingBit(vec4<u32>(global0.b.x, u_input.b, 118740u, 74484u))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(37027u, 2963u, global0.b.x, global0.b.x)), vec4<u32>(1u, global0.b.x, 0u, u_input.b))) >> (~(~(vec4<u32>(39798u, u_input.a, 107379u, global0.b.x) >> (vec4<u32>(1u, 4294967295u, 15504u, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(~1u, ~firstTrailingBit(global0.b.x), ~1u, _wgslsmith_clamp_u32(0u, global0.b.x, global0.b.x) ^ _wgslsmith_dot_vec2_u32(global0.b.xy, vec2<u32>(global0.b.x, 31039u))) >> (~(~abs(vec4<u32>(4294967295u, 1u, u_input.e, u_input.a))) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(global0.b.x, global0.b.x), 15726u << ((global0.b.x | global0.b.x) % 32u)), u_input.e));
}

