struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 36494u, 1u, 4294967295u, 4294967295u, 1u, 22659u, 79980u, 1u, 1u, 0u, 1u, 1u, 0u, 0u, 1u, 2563u, 4748u, 8092u, 60263u, 4294967295u, 1u, 30696u);

var<private> global2: Struct_2 = Struct_2(vec3<u32>(12161u, 4294967295u, 11815u));

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec4<u32>(27133u, 84992u, 0u, 33990u), vec2<u32>(1u, 26297u), 1900f)), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 45564u, 60945u), vec2<u32>(5925u, 4294967295u), -1830f)), Struct_3(Struct_1(vec4<u32>(0u, 4294967295u, 0u, 0u), vec2<u32>(38755u, 0u), -1737f)), Struct_3(Struct_1(vec4<u32>(3622u, 78373u, 1u, 31543u), vec2<u32>(3178u, 54906u), 1154f)), Struct_3(Struct_1(vec4<u32>(0u, 0u, 1u, 70726u), vec2<u32>(62406u, 85886u), 658f)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec2<u32>(11024u, 90798u), -1000f)), Struct_3(Struct_1(vec4<u32>(4294967295u, 29155u, 90049u, 30596u), vec2<u32>(1u, 2808u), -185f)), Struct_3(Struct_1(vec4<u32>(39962u, 711u, 23644u, 4294967295u), vec2<u32>(74482u, 9299u), -657f)), Struct_3(Struct_1(vec4<u32>(121498u, 7670u, 78239u, 15456u), vec2<u32>(1u, 1796u), -1079f)), Struct_3(Struct_1(vec4<u32>(0u, 0u, 14223u, 4294967295u), vec2<u32>(1u, 43866u), -546f)), Struct_3(Struct_1(vec4<u32>(37196u, 2578u, 67576u, 4294967295u), vec2<u32>(23615u, 52654u), -1802f)), Struct_3(Struct_1(vec4<u32>(43333u, 1u, 39090u, 31034u), vec2<u32>(24818u, 4294967295u), -2016f)), Struct_3(Struct_1(vec4<u32>(10557u, 1u, 18905u, 0u), vec2<u32>(0u, 0u), -1069f)), Struct_3(Struct_1(vec4<u32>(52246u, 4294967295u, 0u, 4294967295u), vec2<u32>(0u, 5347u), 1933f)), Struct_3(Struct_1(vec4<u32>(51363u, 7470u, 0u, 15222u), vec2<u32>(0u, 5812u), 895f)), Struct_3(Struct_1(vec4<u32>(53751u, 4294967295u, 8417u, 36888u), vec2<u32>(1u, 30049u), -178f)), Struct_3(Struct_1(vec4<u32>(1u, 3531u, 76780u, 4294967295u), vec2<u32>(1u, 117559u), 1193f)), Struct_3(Struct_1(vec4<u32>(0u, 0u, 1u, 8948u), vec2<u32>(1172u, 1u), 756f)), Struct_3(Struct_1(vec4<u32>(4294967295u, 29180u, 18534u, 1u), vec2<u32>(0u, 1u), -1000f)), Struct_3(Struct_1(vec4<u32>(12031u, 57540u, 1u, 54752u), vec2<u32>(35854u, 8724u), 381f)), Struct_3(Struct_1(vec4<u32>(29457u, 87376u, 0u, 2679u), vec2<u32>(1u, 0u), -1123f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    var var_0 = arg_2.c;
    global3 = array<Struct_3, 21>();
    let var_1 = firstTrailingBit(u_input.a);
    var_0 = Struct_1(var_0.a, select(_wgslsmith_mult_vec2_u32(vec2<u32>(~16539u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(7648u, 1u))), arg_2.c.a.xz), firstLeadingBit(~(~vec2<u32>(arg_0.a.b.x, global2.a.x))), arg_1.x), _wgslsmith_f_op_f32(round(-1000f)));
    global3 = array<Struct_3, 21>();
    return vec3<u32>(reverseBits(1u), global2.a.x ^ u_input.c.x, 26736u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = array<Struct_3, 21>();
    global2 = Struct_2(select(~vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a.x, 23u)], 23u)], ~global1[_wgslsmith_index_u32(u_input.d.x, 23u)], ~1u), _wgslsmith_mod_vec3_u32(func_3(Struct_3(Struct_1(vec4<u32>(44008u, 60331u, global2.a.x, 40230u), vec2<u32>(global2.a.x, global2.a.x), 619f)), vec2<bool>(true, true), Struct_4(-34802i, 133f, Struct_1(vec4<u32>(1u, global2.a.x, u_input.d.x, 6376u), global2.a.yz, arg_0), vec3<f32>(arg_0, arg_0, arg_0)), -1i), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 67970u) & vec3<u32>(0u, global1[_wgslsmith_index_u32(1u, 23u)], 0u), vec3<u32>(u_input.c.x, 26773u, global2.a.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), all(vec3<bool>(true, true, false))))));
    global1 = array<u32, 23>();
    global1 = array<u32, 23>();
    var var_0 = ~_wgslsmith_dot_vec2_i32(abs(~abs(vec2<i32>(-1i, u_input.e))), u_input.b ^ _wgslsmith_add_vec2_i32(u_input.a.zz, u_input.b));
    return Struct_1(vec4<u32>(~(~0u), global2.a.x, ~(~(1u | u_input.d.x)), _wgslsmith_mult_u32(0u, ~(~global2.a.x))), vec2<u32>(u_input.c.x | (reverseBits(u_input.d.x) << (select(4294967295u, global1[_wgslsmith_index_u32(0u, 23u)], false) % 32u)), 54485u), 1676f);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0.a.a.x;
    global0 = 128113u;
    let var_1 = func_2(_wgslsmith_f_op_f32(-arg_2.c));
    let var_2 = 1i << ((arg_2.b.x >> (48482u % 32u)) % 32u);
    global1 = array<u32, 23>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c + 1141f), _wgslsmith_f_op_f32(ceil(470f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + 1469f), _wgslsmith_f_op_f32(abs(-809f)))))) + 269f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec4<u32>(2113u, global2.a.x, u_input.d.x, 54193u), vec2<u32>(global1[_wgslsmith_index_u32(12069u, 23u)], u_input.c.x), 1328f)), _wgslsmith_div_i32(u_input.b.x, u_input.e), Struct_1(~vec4<u32>(u_input.d.x, 4294967295u, 10118u, u_input.c.x), ~vec2<u32>(42442u, 65283u), _wgslsmith_f_op_f32(-1000f * -691f))))));
    let var_1 = select(false, true, false);
    var var_2 = !(!(!select(!vec4<bool>(var_1, var_1, true, var_1), select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, true, false, true), vec4<bool>(false, true, var_1, true)), vec4<bool>(false, true, false, true))));
    let var_3 = ~(~max(vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(51154u, 23u)], abs(global2.a.x)), global2.a));
    global2 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(~47443u, func_3(global3[_wgslsmith_index_u32(global2.a.x, 21u)], vec2<bool>(var_2.x, true), Struct_4(u_input.b.x, var_0, Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(53867u, 23u)], 10471u, global2.a.x, 60799u), u_input.d.yz, 387f), vec3<f32>(1635f, var_0, var_0)), 61522i).x, select(global2.a.x, 71647u, false)), firstLeadingBit(var_3) >> (max(u_input.d, var_3) % vec3<u32>(32u))) & vec3<u32>(~abs(4294967295u), 1u, ~global1[_wgslsmith_index_u32(reverseBits(20360u), 23u)]));
    global1 = array<u32, 23>();
    var var_4 = Struct_4(u_input.b.x, _wgslsmith_f_op_f32(-var_0), Struct_1(reverseBits(vec4<u32>(12534u, global2.a.x, 0u, global2.a.x)) << (~select(vec4<u32>(var_3.x, var_3.x, 4294967295u, global2.a.x), vec4<u32>(global2.a.x, global1[_wgslsmith_index_u32(1u, 23u)], 1u, 0u), vec4<bool>(var_1, var_1, true, var_2.x)) % vec4<u32>(32u)), vec2<u32>(global1[_wgslsmith_index_u32(global2.a.x, 23u)], ~(1u >> (1u % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(global2.a.x ^ 1u, 21u)], 54275i, func_2(640f))), _wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(floor(var_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0 - var_0), func_2(191f).c, _wgslsmith_f_op_f32(step(var_0, -431f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-597f, var_0, var_0), vec3<f32>(1125f, -638f, 1000f))), select(!var_2.ywx, vec3<bool>(var_2.x, true, true), vec3<bool>(true, true, true))))));
    var var_5 = Struct_2(~firstLeadingBit(abs(~vec3<u32>(global1[_wgslsmith_index_u32(48356u, 23u)], 1u, 13045u))));
    let x = u_input.a;
    s_output = StorageBuffer(~1i ^ (-var_4.a << (global1[_wgslsmith_index_u32(3864u, 23u)] % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.d.yx)));
}

