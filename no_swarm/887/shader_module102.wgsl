struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(29134i, -22537i, -46407i));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-650f, vec3<f32>(1846f, -1129f, -423f), -27044i, vec4<f32>(1000f, -1405f, 633f, -966f)), Struct_1(1111f, vec3<f32>(-1050f, -210f, 314f), -1i, vec4<f32>(907f, -1463f, 775f, -516f)), Struct_1(-1219f, vec3<f32>(-261f, -1092f, 180f), i32(-2147483648), vec4<f32>(-1023f, 2632f, -1441f, 840f)), Struct_1(824f, vec3<f32>(-1000f, -150f, 1505f), -49015i, vec4<f32>(-759f, -578f, 2725f, -471f)), Struct_1(-941f, vec3<f32>(239f, -243f, 861f), 46982i, vec4<f32>(-607f, -444f, 862f, -689f)), Struct_1(-705f, vec3<f32>(707f, -1000f, -1133f), 2147483647i, vec4<f32>(-128f, 398f, 994f, 1000f)), Struct_1(2887f, vec3<f32>(-1393f, -149f, 287f), -47906i, vec4<f32>(665f, 1020f, 803f, 499f)), Struct_1(201f, vec3<f32>(-371f, 477f, -2277f), -1i, vec4<f32>(-2017f, 635f, -448f, -1170f)), Struct_1(637f, vec3<f32>(-277f, 638f, -1000f), 2147483647i, vec4<f32>(-1071f, 236f, -229f, 389f)), Struct_1(1830f, vec3<f32>(-271f, -1441f, -1466f), 0i, vec4<f32>(946f, -617f, -426f, 949f)), Struct_1(-366f, vec3<f32>(-1314f, 600f, -1208f), 1i, vec4<f32>(-2008f, 388f, -768f, -1586f)), Struct_1(160f, vec3<f32>(145f, 100f, 376f), -1i, vec4<f32>(815f, 511f, 130f, -221f)), Struct_1(226f, vec3<f32>(-998f, 1239f, -239f), 2147483647i, vec4<f32>(-2041f, 206f, 1180f, 1603f)));

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    return ~(-(-vec2<i32>(u_input.a, u_input.a) << (~(~global2.a.yw) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-449f, -1412f, true)), -315f))))), reverseBits(~global2.a.x >> (1u % 32u)), _wgslsmith_sub_i32(u_input.a, 2147483647i), func_1(Struct_2(~(global2.a << (vec4<u32>(4294967295u, global2.a.x, global2.a.x, 4294967295u) % vec4<u32>(32u))))));
}

