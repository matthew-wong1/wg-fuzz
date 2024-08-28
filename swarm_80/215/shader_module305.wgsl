struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<i32>(2147483647i, 4832i, -1620i, 21974i), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<u32>(17677u, 32348u, 30908u, 99040u), vec3<u32>(61348u, 0u, 0u)));

var<private> global1: array<u32, 6> = array<u32, 6>(4294967295u, 44800u, 1u, 0u, 0u, 3148u);

var<private> global2: array<f32, 7> = array<f32, 7>(2059f, 339f, 1269f, 1194f, -182f, 771f, -611f);

var<private> global3: array<u32, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~4294967295u, 6u)];
    let var_1 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~707u, 1u)], 6u)], 1u)];
    global0 = array<Struct_2, 1>();
    var var_2 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 7u)] >= -1000f)));
    return global0[_wgslsmith_index_u32(min(~u_input.d.x, firstTrailingBit(~firstLeadingBit(u_input.d.x))), 1u)];
}

fn func_1() -> Struct_2 {
    let var_0 = 54837i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !(!(!select(true, true, false)) | false);
    global1 = array<u32, 6>();
    var var_2 = Struct_1(true, all(vec3<bool>(true, true, true)));
    var_2 = Struct_1(var_1, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.zw);
}

