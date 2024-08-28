struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(0u, -10446i), Struct_1(16238u, 28987i), Struct_1(100595u, -40881i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    let var_0 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(74415u, u_input.a) << (12189u % 32u));
    var var_1 = Struct_1(var_0.x, 0i);
    var var_2 = ~(((var_1.a ^ var_1.a) ^ 24807u) | 0u) | ~66122u;
    global0 = array<Struct_1, 3>();
    return Struct_1(~4294967295u, _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(var_1.b, ~(-77535i)) | 40017i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    return vec2<bool>(!(~firstTrailingBit(16967u) > 56067u), true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), u_input.a == 34994u), all(vec2<bool>(true, true)))));
    global0 = array<Struct_1, 3>();
    var var_1 = var_0;
    var var_2 = vec3<f32>(1f, 1f, 1f);
    global0 = array<Struct_1, 3>();
    return func_2(all(func_3(global0[_wgslsmith_index_u32(28881u, 3u)], 1i, func_2(true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = func_1();
    let var_1 = -1000f;
    var var_2 = func_1();
    var_2 = var_0;
    let var_3 = select(~(~vec2<i32>(max(40541i, var_0.b), var_2.b & 0i)), vec2<i32>(2147483647i, var_2.b), true);
    var var_4 = Struct_1(firstLeadingBit(var_0.a), abs(~(-var_2.b | func_1().b)));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, reverseBits(~max(-vec4<i32>(-25857i, var_3.x, var_4.b, 0i), ~vec4<i32>(-911i, -60640i, -6518i, -2147483647i))));
}

