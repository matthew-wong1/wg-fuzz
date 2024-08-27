struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1190f, 1476f, vec3<bool>(true, false, false)), true, 0i, vec3<u32>(0u, 114522u, 25483u));

var<private> global1: Struct_2 = Struct_2(Struct_1(-629f, -149f, vec3<bool>(false, false, true)), true, 17147i, vec3<u32>(4708u, 4294967295u, 1u));

var<private> global2: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(486f, -895f, 837f), vec3<f32>(998f, 108f, 389f), vec3<f32>(-341f, -175f, -866f), vec3<f32>(-589f, -1126f, -530f), vec3<f32>(-522f, -303f, -2563f), vec3<f32>(1000f, 2064f, -1219f), vec3<f32>(707f, 1096f, -1455f), vec3<f32>(168f, -132f, -622f), vec3<f32>(-607f, -1000f, -1149f), vec3<f32>(-305f, 927f, 2379f), vec3<f32>(-448f, 2045f, 1063f), vec3<f32>(-1076f, 144f, -313f), vec3<f32>(184f, 221f, 872f), vec3<f32>(1931f, -357f, 131f), vec3<f32>(972f, 1000f, 422f), vec3<f32>(445f, -709f, 207f), vec3<f32>(1513f, 1032f, 102f), vec3<f32>(-542f, 1274f, 445f));

var<private> global3: array<Struct_2, 25>;

var<private> global4: array<bool, 15> = array<bool, 15>(false, false, false, true, false, true, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    global3 = array<Struct_2, 25>();
    var var_1 = global3[_wgslsmith_index_u32(select(global0.d.x, global0.d.x >> ((global1.d.x & _wgslsmith_mult_u32(0u, ~global0.d.x)) % 32u), all(!(!vec2<bool>(global0.b, global0.b)))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f - -319f) - _wgslsmith_f_op_f32(trunc(var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -842f)), (max(1i, max(u_input.c, var_1.c)) ^ reverseBits(1i)) << (global0.d.x % 32u), select(~vec2<u32>(~12300u, global1.d.x), vec2<u32>(84925u, ~(15790u << (global1.d.x % 32u))), !var_0.c.x));
}

