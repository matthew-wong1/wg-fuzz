struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<i32>;

var<private> global2: vec3<f32> = vec3<f32>(748f, 1261f, 1357f);

var<private> global3: i32;

var<private> global4: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(42247i, vec3<i32>(i32(-2147483648), 1i, 1i), -1683f, vec3<u32>(7534u, 0u, 4294967295u)), Struct_3(1i, vec3<i32>(13126i, 3602i, 0i), 709f, vec3<u32>(24771u, 0u, 1524u)), Struct_3(-57387i, vec3<i32>(-250i, -1i, 0i), -531f, vec3<u32>(12847u, 4294967295u, 0u)), Struct_3(-70939i, vec3<i32>(11763i, 1i, 1i), 1000f, vec3<u32>(1u, 1u, 4294967295u)), Struct_3(-19558i, vec3<i32>(7166i, -31060i, 1i), -1357f, vec3<u32>(0u, 1u, 27479u)), Struct_3(17032i, vec3<i32>(-1i, 30832i, 1i), -1774f, vec3<u32>(60916u, 92049u, 4294967295u)), Struct_3(-42845i, vec3<i32>(7215i, 291i, 4762i), 1725f, vec3<u32>(89861u, 1u, 0u)), Struct_3(-11927i, vec3<i32>(-29440i, 549i, 0i), 328f, vec3<u32>(7614u, 13454u, 47802u)), Struct_3(i32(-2147483648), vec3<i32>(-58532i, 8062i, -6608i), 424f, vec3<u32>(0u, 17597u, 42456u)), Struct_3(i32(-2147483648), vec3<i32>(-13988i, 0i, 0i), -1302f, vec3<u32>(18616u, 25449u, 3096u)), Struct_3(1i, vec3<i32>(1i, -11696i, -1i), -957f, vec3<u32>(40646u, 50582u, 4294967295u)), Struct_3(33548i, vec3<i32>(-27676i, -22463i, 2147483647i), 2049f, vec3<u32>(13957u, 20201u, 66076u)), Struct_3(6275i, vec3<i32>(1i, -1i, -1i), -260f, vec3<u32>(120943u, 1u, 4294967295u)), Struct_3(-41469i, vec3<i32>(i32(-2147483648), 2147483647i, -24053i), 424f, vec3<u32>(0u, 20279u, 1u)), Struct_3(-25731i, vec3<i32>(57960i, i32(-2147483648), -18056i), 558f, vec3<u32>(27958u, 0u, 88746u)), Struct_3(2147483647i, vec3<i32>(2147483647i, 1951i, -31631i), 1156f, vec3<u32>(4294967295u, 4076u, 43496u)), Struct_3(-3093i, vec3<i32>(i32(-2147483648), -31395i, i32(-2147483648)), -2438f, vec3<u32>(118790u, 0u, 4294967295u)), Struct_3(i32(-2147483648), vec3<i32>(-1i, 1i, 13259i), 1000f, vec3<u32>(4294967295u, 1451u, 36503u)), Struct_3(0i, vec3<i32>(-1i, 0i, 2618i), 483f, vec3<u32>(32847u, 15122u, 0u)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1624f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))))));
}

