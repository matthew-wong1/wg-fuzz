struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<u32> = vec3<u32>(75625u, 4294967295u, 37799u);

var<private> global2: vec3<f32>;

var<private> global3: Struct_3;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(reverseBits(vec2<u32>(1u, 23358u)));
    var var_1 = arg_0.a.b.yyz;
    let var_2 = 43413u;
    global1 = global3.a.b.xyy;
    var var_3 = ~vec2<u32>(~var_1.x, 37618u);
    return (-min(13874i & arg_1.x, global3.a.a.b) >> (arg_0.a.c % 32u)) ^ (i32(-1i) * -9090i);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(global3.a);
    var var_1 = var_0.a;
    global0 = u_input.e;
    var_1 = global3.a;
    var var_2 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a.a))), var_0.a.a.a)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1343f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec4<bool>(any(vec2<bool>(false, false)), true, true, false)), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true), true);
    var var_1 = i32(-1i) * -(~_wgslsmith_sub_i32(reverseBits(u_input.d.x), func_1(Struct_3(Struct_2(Struct_1(-373f, global0.x), global3.a.b, 4294967295u)), vec4<i32>(-1i, 0i, -4636i, global0.x), global2.x, Struct_1(global3.a.a.a, -1i))));
    let var_2 = global3.a.a.b > 32378i;
    let var_3 = Struct_3(global3.a);
    global2 = vec3<f32>(-2586f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)) * 1164f))), _wgslsmith_f_op_f32(func_2(Struct_1(-1482f, 0i))));
    global1 = firstTrailingBit(~abs(vec3<u32>(global1.x, global3.a.c, ~global3.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(15823i, global0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(26600i, global3.a.a.b) | u_input.a.xx, u_input.d))));
}

