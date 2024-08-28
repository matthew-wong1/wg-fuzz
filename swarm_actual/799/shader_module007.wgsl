struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(-1138i, vec2<u32>(4294967295u, 2750u), vec3<f32>(-716f, -396f, -789f)), Struct_3(-1i, vec2<u32>(23789u, 4294967295u), vec3<f32>(-1961f, -675f, 197f)), Struct_3(-60301i, vec2<u32>(77328u, 0u), vec3<f32>(-1000f, 1157f, -1556f)), Struct_3(19706i, vec2<u32>(1u, 1u), vec3<f32>(504f, 266f, -1284f)), Struct_3(-7911i, vec2<u32>(0u, 0u), vec3<f32>(449f, 594f, -1000f)), Struct_3(28994i, vec2<u32>(1u, 4294967295u), vec3<f32>(-671f, 567f, 246f)), Struct_3(14071i, vec2<u32>(0u, 4294967295u), vec3<f32>(1249f, 757f, -1140f)), Struct_3(-28443i, vec2<u32>(17069u, 101964u), vec3<f32>(-1643f, 413f, 1434f)), Struct_3(2147483647i, vec2<u32>(24340u, 0u), vec3<f32>(-1254f, 2426f, -1231f)), Struct_3(19054i, vec2<u32>(25660u, 54471u), vec3<f32>(628f, 1512f, -1183f)), Struct_3(-1i, vec2<u32>(1u, 0u), vec3<f32>(628f, 1000f, 428f)), Struct_3(58588i, vec2<u32>(14859u, 12024u), vec3<f32>(-109f, -2483f, 1226f)), Struct_3(23039i, vec2<u32>(1u, 4294967295u), vec3<f32>(-1000f, -1653f, 1369f)), Struct_3(-2002i, vec2<u32>(1u, 0u), vec3<f32>(-903f, -1132f, -257f)), Struct_3(1i, vec2<u32>(0u, 12135u), vec3<f32>(-211f, 1794f, 2642f)), Struct_3(-9794i, vec2<u32>(0u, 0u), vec3<f32>(1315f, -446f, 490f)), Struct_3(9166i, vec2<u32>(82114u, 23458u), vec3<f32>(-1892f, -1106f, -1849f)), Struct_3(1i, vec2<u32>(39398u, 4294967295u), vec3<f32>(-1913f, -980f, 2096f)), Struct_3(-23615i, vec2<u32>(52742u, 0u), vec3<f32>(-1672f, 454f, -445f)), Struct_3(-535i, vec2<u32>(1u, 4294967295u), vec3<f32>(1000f, 1008f, -984f)), Struct_3(-1i, vec2<u32>(1u, 29201u), vec3<f32>(-197f, -462f, -638f)), Struct_3(1i, vec2<u32>(0u, 1u), vec3<f32>(827f, 532f, 1000f)), Struct_3(2147483647i, vec2<u32>(1u, 26341u), vec3<f32>(623f, -1083f, 563f)), Struct_3(-33253i, vec2<u32>(16563u, 49550u), vec3<f32>(1325f, 470f, 233f)));

var<private> global1: Struct_5 = Struct_5(Struct_2(Struct_1(vec3<i32>(-41450i, 2147483647i, -1i)), vec2<f32>(1041f, 413f), vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -31575i)), vec4<bool>(true, true, false, true)), vec3<u32>(54385u, 1u, 40234u), Struct_1(vec3<i32>(i32(-2147483648), 11989i, -1i)), Struct_4(vec2<bool>(false, false), Struct_3(2147483647i, vec2<u32>(48527u, 60348u), vec3<f32>(-232f, 885f, 157f))));

var<private> global2: array<Struct_3, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1047f), global1.d.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2344f - _wgslsmith_f_op_f32(abs(169f)))))));
    return abs(abs(u_input.a));
}

fn func_2() -> Struct_3 {
    global1 = Struct_5(Struct_2(global1.c, global1.d.b.c.zy, global1.a.e, global1.c, vec4<bool>(all(vec2<bool>(global1.d.a.x, true)), false, true, false)), countOneBits(global1.b & ~(~vec3<u32>(77727u, global1.d.b.b.x, 4294967295u))), global1.a.a, global1.d);
    let var_0 = all(vec3<bool>(global1.a.e.x, global1.a.c.x, true));
    global0 = array<Struct_3, 24>();
    var var_1 = Struct_3(func_3(), abs(_wgslsmith_mult_vec2_u32(~global1.d.b.b, vec2<u32>(u_input.c.x, u_input.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), global1.d.b.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.d.b.c.x, -124f))))))));
    var var_2 = Struct_3(~0i, abs(countOneBits(~vec2<u32>(u_input.b.x, global1.d.b.b.x) << (firstTrailingBit(global1.b.zx) % vec2<u32>(32u)))), var_1.c);
    return Struct_3(u_input.a, select(_wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.x, var_1.b.x), vec2<u32>(31310u, 18070u))), vec2<u32>(global1.b.x, global1.b.x) & vec2<u32>(1u, 62368u)), vec2<u32>(~1u, 13710u), select(var_0 && global1.d.a.x, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c.x - -647f))), global1.d.b.c.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b.x + -1848f) + global1.a.b.x))))));
    global2 = array<Struct_3, 5>();
    let var_1 = ~(~global1.d.b.b);
    var var_2 = _wgslsmith_div_i32(global1.d.b.a, countOneBits(-(2147483647i ^ (u_input.a & global1.d.b.a))));
    global0 = array<Struct_3, 24>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 1479f;
    let var_2 = Struct_1(global1.c.a);
    global1 = Struct_5(global1.a, _wgslsmith_div_vec3_u32(select(reverseBits(abs(vec3<u32>(global1.d.b.b.x, var_0.b.x, 4294967295u))), _wgslsmith_div_vec3_u32(min(u_input.b, vec3<u32>(1u, 16630u, 0u)), firstLeadingBit(vec3<u32>(global1.b.x, 32882u, u_input.c.x))), global1.a.e.wyw), vec3<u32>(1u, 67349u, ~(~40735u))), Struct_1(countOneBits(firstTrailingBit(vec3<i32>(var_2.a.x, 9503i, -32418i)))), Struct_4(vec2<bool>(!any(global1.a.e.wzy), global1.d.a.x), Struct_3(var_0.a, var_0.b, var_0.c)));
    var var_3 = global1.a.e.wxw;
    var var_4 = Struct_4(select(var_3.yy, !select(select(var_3.yx, vec2<bool>(var_3.x, var_3.x), vec2<bool>(false, var_3.x)), select(vec2<bool>(var_3.x, var_3.x), global1.a.e.yz, var_3.yz), false), !(!var_3.xz)), global2[_wgslsmith_index_u32(var_0.b.x, 5u)]);
    var var_5 = global1.a.a;
    var_1 = global1.a.b.x;
    var var_6 = ~(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(_wgslsmith_sub_vec3_u32(vec3<u32>(4564u, global1.b.x, var_0.b.x), vec3<u32>(1u, var_4.b.b.x, u_input.c.x) >> (u_input.b % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u))), firstTrailingBit(countOneBits(vec3<u32>(_wgslsmith_div_u32(var_0.b.x, var_4.b.b.x), var_4.b.b.x, select(u_input.b.x, 0u, var_3.x)))), -(~abs(_wgslsmith_sub_i32(5494i, -23727i))));
}

