struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(7303u, 1u, 15449u, 31180u), vec4<u32>(42717u, 24902u, 4294967295u, 1u), vec4<u32>(1u, 55140u, 50882u, 22322u), vec4<u32>(4294967295u, 4294967295u, 1147u, 0u), vec4<u32>(31040u, 1u, 37117u, 0u), vec4<u32>(19164u, 0u, 11420u, 5827u), vec4<u32>(39298u, 1u, 0u, 84590u), vec4<u32>(1u, 27386u, 0u, 54718u), vec4<u32>(37106u, 4943u, 16851u, 27125u), vec4<u32>(1u, 0u, 44195u, 0u), vec4<u32>(0u, 1u, 20277u, 1u), vec4<u32>(15880u, 1475u, 4294967295u, 5030u), vec4<u32>(1u, 8249u, 4294967295u, 18752u), vec4<u32>(4294967295u, 64u, 42232u, 0u), vec4<u32>(1u, 4294967295u, 63703u, 0u), vec4<u32>(41690u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 4325u, 7013u, 23327u), vec4<u32>(21856u, 1u, 26039u, 4294967295u), vec4<u32>(16380u, 1u, 25168u, 46473u), vec4<u32>(62520u, 6091u, 36477u, 1u), vec4<u32>(1u, 0u, 0u, 25427u), vec4<u32>(127079u, 45732u, 15247u, 0u), vec4<u32>(1u, 0u, 62290u, 1u), vec4<u32>(31342u, 4294967295u, 1u, 34798u), vec4<u32>(0u, 9779u, 4362u, 1u), vec4<u32>(37429u, 48635u, 1u, 44640u), vec4<u32>(1u, 0u, 83752u, 1u), vec4<u32>(4294967295u, 67340u, 37854u, 40154u));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(69058u, 0u, 1u), vec3<u32>(61542u, 4294967295u, 2301u), vec3<u32>(31214u, 1u, 4294967295u), vec3<u32>(10765u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 69532u, 43780u));

var<private> global3: Struct_3 = Struct_3(Struct_2(vec2<u32>(16957u, 33928u), Struct_1(vec3<bool>(false, false, false), vec2<i32>(4099i, -20038i)), vec4<i32>(24105i, 2147483647i, 53287i, -18524i), Struct_1(vec3<bool>(true, true, true), vec2<i32>(1i, -35645i)), vec3<u32>(0u, 1u, 0u)), vec4<i32>(27819i, 1i, 31804i, -37317i));

var<private> global4: array<f32, 11> = array<f32, 11>(-1071f, 1000f, 457f, 2336f, -1491f, -233f, 893f, -1000f, 2306f, 224f, 708f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> bool {
    var var_0 = arg_0;
    var var_1 = vec4<bool>(false, arg_0.b.a.x | true, true && arg_0.b.a.x, false);
    let var_2 = arg_0;
    return false;
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = true;
    var_0 = true;
    let var_1 = min(_wgslsmith_div_u32(max(21913u, 1u >> (arg_0 % 32u)), arg_0), firstTrailingBit(~arg_0 >> (~133062u % 32u))) & ~u_input.b.x;
    var var_2 = Struct_1(vec3<bool>(!func_1(Struct_2(global3.a.e.zz, global3.a.b, global3.b, Struct_1(vec3<bool>(global1.x, global1.x, false), global3.a.c.yz), global3.a.e), _wgslsmith_mod_u32(u_input.b.x, 3580u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-124f, -1007f))), all(vec3<bool>(global3.a.b.a.x, true, true)), true), ~vec2<i32>(15986i, global3.a.d.b.x));
    let var_3 = global3.b.wwx;
    return global3.a.b.a.x;
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = u_input.b.x;
    global2 = array<vec3<u32>, 6>();
    var var_1 = func_3(u_input.b.x);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(1453f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(55000u >> (1u % 32u), 11u)])))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-130f, var_2.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, global4[_wgslsmith_index_u32(global3.a.e.x, 11u)]))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(arg_0.x, 11u)], -481f) * vec2<f32>(-367f, global4[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, 688f), vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 11u)], var_2.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(80514u, 11u)]))), false))));
    return global0[_wgslsmith_index_u32(u_input.b.x, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = 1u;
    let var_2 = _wgslsmith_add_i32(firstLeadingBit(u_input.a), u_input.d);
    let var_3 = ~_wgslsmith_mod_i32(6651i, ~firstTrailingBit(global3.a.d.b.x));
    var var_4 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(global3.a.e.x), ~firstLeadingBit(4294967295u), 1u | var_1), ~select(min(global2[_wgslsmith_index_u32(45329u, 6u)], vec3<u32>(var_1, 4506u, var_1)), vec3<u32>(15840u, 0u, 28592u), global3.a.b.a.x || true)));
    let var_5 = vec2<bool>(true, !global1.x);
    let var_6 = Struct_1(!select(select(global3.a.d.a, global3.a.b.a, !var_5.x), vec3<bool>(false, true, func_1(global3.a, u_input.b.x, vec2<f32>(1361f, 559f))), all(vec2<bool>(global3.a.d.a.x, global1.x))), global3.a.d.b ^ global3.b.yy);
    global2 = array<vec3<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~vec2<u32>(4294967295u, var_1) << (_wgslsmith_mod_vec2_u32(var_4.zx, ~u_input.b) % vec2<u32>(32u))));
}

