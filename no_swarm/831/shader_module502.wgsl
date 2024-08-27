struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(3424u), Struct_2(50447u), Struct_2(8128u), Struct_2(0u), Struct_2(1u), Struct_2(1u), Struct_2(15560u), Struct_2(0u), Struct_2(4294967295u), Struct_2(3305u), Struct_2(7004u), Struct_2(63619u), Struct_2(50813u), Struct_2(1u), Struct_2(10643u), Struct_2(17837u), Struct_2(0u), Struct_2(0u), Struct_2(0u));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1i, 37709i, -10774i, -16333i), vec4<u32>(46933u, 20064u, 12411u, 60281u), 0i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 19>();
    var var_0 = any(vec3<bool>(true, true, true));
    var_0 = true || ((~_wgslsmith_sub_i32(global1.a.x, -13209i) ^ ~_wgslsmith_sub_i32(-2147483647i, global1.c)) <= select(~_wgslsmith_sub_i32(0i, -1i), 1i, false || (u_input.b.x == 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.zyw);
}

