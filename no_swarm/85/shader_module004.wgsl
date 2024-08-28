struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(i32(-2147483648), 0i, -1i, i32(-2147483648)), vec4<i32>(-17464i, 24699i, 2147483647i, -71486i), vec4<i32>(0i, -5913i, -37447i, 4461i), vec4<i32>(13410i, -1i, 2910i, -9717i), vec4<i32>(0i, -11706i, -32336i, -16399i), vec4<i32>(1i, i32(-2147483648), 0i, 0i), vec4<i32>(-19093i, -1i, 1i, 0i), vec4<i32>(1i, -25410i, -1i, i32(-2147483648)), vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(-30745i, 1i, -1i, 29754i), vec4<i32>(-39766i, -12688i, 0i, -3087i), vec4<i32>(36430i, -1i, -1i, 2147483647i), vec4<i32>(-4243i, 1i, -32382i, -1i), vec4<i32>(i32(-2147483648), 11208i, -8703i, 2147483647i), vec4<i32>(-45882i, 1i, -15443i, 11559i), vec4<i32>(13023i, -11941i, -119036i, -26455i), vec4<i32>(24816i, -7254i, 24688i, -1i), vec4<i32>(19537i, -1i, 0i, -5875i), vec4<i32>(-1i, 0i, 15401i, -6441i), vec4<i32>(-5600i, i32(-2147483648), -1i, 12525i), vec4<i32>(22483i, 10935i, -47230i, -1i), vec4<i32>(-29000i, -57169i, -13266i, -46544i), vec4<i32>(-21356i, 25138i, -1i, 0i), vec4<i32>(37876i, 32523i, 0i, -4665i), vec4<i32>(-71092i, -13557i, i32(-2147483648), 1i));

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(true, vec2<i32>(2147483647i, -35208i)), Struct_2(false, vec2<i32>(61062i, 42006i)), Struct_2(true, vec2<i32>(-18035i, -22389i)), Struct_2(false, vec2<i32>(0i, -21720i)), Struct_2(false, vec2<i32>(6362i, -33208i)), Struct_2(true, vec2<i32>(9399i, 8094i)), Struct_2(false, vec2<i32>(2147483647i, -1i)), Struct_2(true, vec2<i32>(1i, 1i)), Struct_2(false, vec2<i32>(-15816i, 47972i)), Struct_2(false, vec2<i32>(-2424i, 2828i)), Struct_2(false, vec2<i32>(-1i, 2147483647i)), Struct_2(true, vec2<i32>(i32(-2147483648), -9738i)), Struct_2(false, vec2<i32>(25509i, 2147483647i)));

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> StorageBuffer {
    global0 = array<vec4<i32>, 25>();
    let var_0 = -1i;
    global0 = array<vec4<i32>, 25>();
    var var_1 = true;
    let var_2 = 1u;
    return StorageBuffer(1630f, max(~reverseBits(u_input.d) >> ((u_input.d >> (~vec4<u32>(1u, 4294967295u, u_input.a, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(var_2, 45963u), ~4294967295u, ~u_input.d.x, ~9095u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1166f)))))), _wgslsmith_f_op_f32(-1860f + 638f));
    var_0 = vec2<f32>(-562f, -1297f);
    var var_1 = u_input.b;
    global0 = array<vec4<i32>, 25>();
    global0 = array<vec4<i32>, 25>();
    var_1 = 1i;
    let x = u_input.a;
    s_output = func_1(global2.x, Struct_2(!all(global2.zz), u_input.c.zy), vec4<bool>(true, global2.x, true, !(_wgslsmith_mod_u32(u_input.a, 0u) >= _wgslsmith_clamp_u32(u_input.d.x, 1u, u_input.a))));
}

