struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<u32>(2236u, 20420u, 7557u, 3262u), vec3<u32>(1869u, 0u, 4294967295u), 1u), Struct_2(vec4<u32>(82262u, 1u, 40218u, 19048u), vec3<u32>(4294967295u, 7215u, 19965u), 46484u), Struct_2(vec4<u32>(1u, 0u, 14417u, 47574u), vec3<u32>(1u, 0u, 4294967295u), 41906u), Struct_2(vec4<u32>(32552u, 52874u, 4294967295u, 0u), vec3<u32>(4294967295u, 41957u, 34431u), 119475u), Struct_2(vec4<u32>(18909u, 66581u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), 4294967295u), Struct_2(vec4<u32>(101758u, 0u, 4294967295u, 51486u), vec3<u32>(7465u, 0u, 5172u), 8956u), Struct_2(vec4<u32>(35759u, 1u, 1u, 34560u), vec3<u32>(28997u, 12596u, 39446u), 4294967295u), Struct_2(vec4<u32>(0u, 1u, 84574u, 0u), vec3<u32>(0u, 0u, 60686u), 0u), Struct_2(vec4<u32>(0u, 39552u, 5421u, 1u), vec3<u32>(33368u, 19182u, 1u), 0u), Struct_2(vec4<u32>(86279u, 50221u, 0u, 874u), vec3<u32>(1u, 0u, 0u), 6719u), Struct_2(vec4<u32>(0u, 0u, 84678u, 115371u), vec3<u32>(38512u, 1u, 1u), 4077u), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 1u), vec3<u32>(1u, 21945u, 0u), 64272u), Struct_2(vec4<u32>(39724u, 29765u, 42638u, 50478u), vec3<u32>(4294967295u, 37059u, 38052u), 13497u), Struct_2(vec4<u32>(0u, 4294967295u, 50748u, 44660u), vec3<u32>(0u, 124u, 0u), 36276u), Struct_2(vec4<u32>(8669u, 1u, 38470u, 61685u), vec3<u32>(1u, 35363u, 0u), 13460u));

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<u32>(1u, 4294967295u, 21143u, 1u), vec3<u32>(30991u, 64848u, 4294967295u), 0u), Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(3696u, 50277u, 4294967295u), 4294967295u), Struct_2(vec4<u32>(28704u, 1u, 30745u, 42490u), vec3<u32>(4294967295u, 0u, 65630u), 4294967295u), Struct_2(vec4<u32>(4294967295u, 12105u, 28132u, 37355u), vec3<u32>(4294967295u, 41400u, 25436u), 4294967295u), Struct_2(vec4<u32>(1u, 0u, 16654u, 0u), vec3<u32>(15440u, 1u, 67910u), 0u), Struct_2(vec4<u32>(4294967295u, 0u, 60828u, 112993u), vec3<u32>(24093u, 19743u, 115790u), 4294967295u), Struct_2(vec4<u32>(63293u, 4294967295u, 1u, 24544u), vec3<u32>(7931u, 0u, 4294967295u), 4294967295u), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 1260u), vec3<u32>(1u, 1u, 4294967295u), 48400u), Struct_2(vec4<u32>(0u, 1u, 27539u, 1242u), vec3<u32>(9683u, 1u, 1u), 1u), Struct_2(vec4<u32>(4294967295u, 1u, 15871u, 87478u), vec3<u32>(4294967295u, 0u, 42551u), 43255u), Struct_2(vec4<u32>(54590u, 97283u, 73357u, 39454u), vec3<u32>(14755u, 17694u, 0u), 21110u), Struct_2(vec4<u32>(0u, 5346u, 2535u, 56873u), vec3<u32>(67447u, 43574u, 1u), 45557u), Struct_2(vec4<u32>(1u, 0u, 1u, 1u), vec3<u32>(1u, 1u, 0u), 28162u), Struct_2(vec4<u32>(4294967295u, 4294967295u, 64440u, 4294967295u), vec3<u32>(28096u, 63512u, 33088u), 20372u), Struct_2(vec4<u32>(0u, 6627u, 4294967295u, 28871u), vec3<u32>(4294967295u, 64848u, 1u), 52711u), Struct_2(vec4<u32>(21506u, 2278u, 1u, 4294967295u), vec3<u32>(1u, 0u, 1u), 63691u), Struct_2(vec4<u32>(0u, 0u, 0u, 4294967295u), vec3<u32>(1u, 43494u, 48797u), 1u), Struct_2(vec4<u32>(55005u, 4294967295u, 1u, 55248u), vec3<u32>(36703u, 4294967295u, 4294967295u), 4294967295u), Struct_2(vec4<u32>(21061u, 0u, 5279u, 0u), vec3<u32>(1u, 4294967295u, 1u), 36021u), Struct_2(vec4<u32>(11102u, 1u, 63816u, 0u), vec3<u32>(17084u, 62023u, 13187u), 55013u), Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec3<u32>(20800u, 4294967295u, 1u), 4294967295u));

var<private> global3: array<bool, 14> = array<bool, 14>(true, true, false, true, false, true, false, false, true, false, true, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    global3 = array<bool, 14>();
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), arg_1, _wgslsmith_f_op_f32(1868f * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), 502f))));
    var var_0 = true;
    var var_1 = global3[_wgslsmith_index_u32(~0u, 14u)];
    global0 = array<Struct_2, 15>();
    return _wgslsmith_mult_u32(~u_input.d.x, 5346u);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> StorageBuffer {
    global2 = array<Struct_2, 21>();
    let var_0 = Struct_2(u_input.d, ~vec3<u32>(~(~u_input.d.x), u_input.d.x, _wgslsmith_mult_u32(~1u, 1u)), ~(~(~2616u)));
    var var_1 = Struct_3(965f, u_input.d.x, !(!global3[_wgslsmith_index_u32(reverseBits(var_0.a.x), 14u)]), arg_0);
    let var_2 = var_1.b;
    var var_3 = select(~(~(var_0.b.x & func_2(vec2<f32>(arg_2, var_1.a), -1292f))), 49285u, !arg_0.b);
    return StorageBuffer(vec3<i32>(-1i) * -abs(u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 21>();
    var var_0 = u_input.d.x << (u_input.d.x % 32u);
    var_0 = u_input.d.x;
    let var_1 = u_input.d.x;
    var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = func_1(Struct_1(u_input.e.yy, true), any(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(var_1, 14u)], true))), -443f);
}

