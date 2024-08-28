struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32> = vec4<f32>(1008f, -407f, 122f, -1211f);

var<private> global2: array<vec2<i32>, 2>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(0u, vec4<f32>(1656f, -163f, 1168f, 369f), vec4<i32>(7162i, -14030i, 1i, -49361i), 0u), Struct_1(13538u, vec4<f32>(1227f, -1028f, 1672f, -608f), vec4<i32>(1i, 0i, 2147483647i, 52900i), 1u), Struct_1(56642u, vec4<f32>(200f, -1468f, 740f, 513f), vec4<i32>(-11980i, 2147483647i, -51721i, -13378i), 0u), Struct_1(4367u, vec4<f32>(-689f, -1441f, -910f, 963f), vec4<i32>(-30297i, -579i, 3727i, -34828i), 4294967295u), Struct_1(28582u, vec4<f32>(-673f, -1000f, -173f, -321f), vec4<i32>(-26115i, -39721i, 34439i, -75712i), 0u), Struct_1(10708u, vec4<f32>(426f, -2006f, 1000f, 179f), vec4<i32>(-1i, 1i, 2147483647i, 0i), 2855u));

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = Struct_1(~(~(~arg_0.d) ^ u_input.e.x), vec4<f32>(219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), 1821f, _wgslsmith_div_f32(arg_0.b.x, global1.x)), firstLeadingBit(-global4.c), max(select(25029u, 10467u, !arg_1), 7393u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1133f)))) * 1159f) * global1.x);
    let var_2 = vec3<f32>(1126f, 2699f, var_0.b.x);
    let var_3 = -9252i;
    var var_4 = vec3<i32>(-32175i, ~(i32(-1i) * -1i), 2147483647i);
    return var_0.d;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(u_input.c.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b.x * global4.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_3.b.x)), -933f)), _wgslsmith_f_op_f32(global4.b.x * -820f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1247f, -2165f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_3.b, global4.b))) * _wgslsmith_f_op_vec4_f32(arg_3.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, arg_3.b.x, arg_0) * global4.b)))), -vec4<i32>(~(~(-1i)), ~42162i, _wgslsmith_div_i32(~arg_1, _wgslsmith_mult_i32(u_input.b, 2147483647i)), global4.c.x), func_2(arg_3, true));
    var var_1 = !(true & (arg_3.d < countOneBits(min(4294967295u, 1u))));
    var var_2 = Struct_1(1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(-global4.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) - arg_2.x), _wgslsmith_f_op_f32(-global4.b.x), -173f), vec4<i32>(1i, arg_3.c.x, var_0.c.x, arg_3.c.x), 1u);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1521f);
    global3 = array<Struct_1, 6>();
    return StorageBuffer(global1.yx, var_2.b.x, ~var_0.d, var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    global3 = array<Struct_1, 6>();
    global0 = 1i;
    let x = u_input.a;
    s_output = func_1(global1.x, -_wgslsmith_mult_i32(1i, ~_wgslsmith_clamp_i32(u_input.b, -26471i, 52229i)), global1.zww, global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(max(u_input.c.x & 4294967295u, u_input.e.x), 46253u, 32958u)), 6u)]);
}

