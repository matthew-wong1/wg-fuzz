struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 60823u), vec2<u32>(68536u, 40350u), vec2<u32>(0u, 33391u), vec2<u32>(6310u, 102239u), vec2<u32>(17437u, 4294967295u), vec2<u32>(4294967295u, 7756u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(13279u, 1u), vec2<u32>(53734u, 23945u), vec2<u32>(0u, 48339u), vec2<u32>(1u, 1u), vec2<u32>(11429u, 1u), vec2<u32>(0u, 29369u), vec2<u32>(36096u, 78347u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 73860u), vec2<u32>(4294967295u, 60533u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 41126u), vec2<u32>(32029u, 19080u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 79313u), vec2<u32>(4294967295u, 78451u));

var<private> global2: f32 = -268f;

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = 463i;
    return firstTrailingBit(~(~u_input.a.zwz));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(global0.c, 31u)];
    var var_1 = 5751u;
    let var_2 = abs(func_3(global1[_wgslsmith_index_u32(43115u, 28u)]));
    let var_3 = select(false, false, true);
    global2 = _wgslsmith_f_op_f32(step(950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))));
    return Struct_2(global0.a, global0.b, firstTrailingBit(arg_0), select(!var_0.a.a, vec2<bool>(true, true), global0.b.x < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-659f, global0.b.x) + global0.b.x)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = array<vec2<u32>, 28>();
    var var_0 = u_input.a.x;
    var var_1 = u_input.c;
    global3 = array<Struct_2, 31>();
    var var_2 = !(!global0.a.a.x);
    return func_2(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.c);
    global1 = array<vec2<u32>, 28>();
    var var_0 = all(!(!vec3<bool>(global0.a.a.x, false, global0.a.a.x))) & ((func_2(~global0.c).c == ~reverseBits(33655u)) && global0.a.a.x);
    var var_1 = u_input.a.yxz;
    let var_2 = func_1(global0.c).c;
    let var_3 = 1i;
    global2 = -1088f;
    let var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(37504u, func_2(6945u).b.xx, 1801f, abs(~firstLeadingBit(vec3<i32>(u_input.b.x, 1i, 24359i)) | ~(~vec3<i32>(u_input.a.x, u_input.d.x, -2147483647i))), firstLeadingBit(var_1.xy >> (u_input.c.wx % vec2<u32>(32u))));
}

