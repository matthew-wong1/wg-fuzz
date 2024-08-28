struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1000f);

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-8734i, 20542i, -3954i), vec3<i32>(-9505i, 28151i, 26567i), -53680i, -885f);

var<private> global3: u32 = 0u;

var<private> global4: vec4<f32> = vec4<f32>(-809f, -198f, 398f, -477f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.b, global2.a, _wgslsmith_sub_i32(global2.c, 3248i), 1149f);
    let var_0 = -9256i;
    var var_1 = !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true);
    let var_2 = -1320f;
    var var_3 = global1[_wgslsmith_index_u32(~(~select(~(~51782u), 1u, !(var_1.x & true))), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(-var_0)), 1i), var_3.zx, var_3.xxy);
}

