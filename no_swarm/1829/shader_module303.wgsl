struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<bool>(true, false, false), vec2<i32>(38023i, -11807i), vec4<i32>(i32(-2147483648), i32(-2147483648), 3677i, -47402i), Struct_2(38973u), Struct_1(true, vec4<u32>(71702u, 28471u, 12989u, 1u))), vec3<u32>(18514u, 1u, 38914u), vec3<f32>(-435f, -991f, 318f), 3226u);

var<private> global1: array<i32, 15> = array<i32, 15>(1i, 1i, -18469i, -8926i, i32(-2147483648), 1289i, -35595i, 18354i, 0i, -1i, 5343i, 2147483647i, -1i, -2129i, -35172i);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = ~_wgslsmith_sub_u32(global0.b.x, reverseBits(countOneBits(firstTrailingBit(global0.d))));
    var var_1 = vec3<f32>(-107f, -562f, global0.c.x);
    global2 = vec2<bool>(false, true);
    var var_2 = global0.a.e.b.wzw;
    return vec3<bool>(false, global3.x, true);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> bool {
    let var_0 = select(vec2<bool>(func_1(!vec4<bool>(global0.a.a.x, global3.x, true, arg_1.x)).x & all(select(arg_0, arg_0, vec4<bool>(false, global0.a.e.a, arg_0.x, global3.x))), (global3.x || true) || !(!arg_1.x)), select(select(arg_1, vec2<bool>(false, arg_1.x), vec2<bool>(any(arg_0.ywz), 4294967295u == u_input.b)), select(select(global3.yz, func_1(arg_0).xz, true | global0.a.e.a), vec2<bool>(arg_0.x, true), _wgslsmith_add_i32(-14456i, global1[_wgslsmith_index_u32(u_input.b, 15u)]) < 0i), global3.x), global3.x);
    let var_1 = i32(-1i) * -_wgslsmith_mult_i32(select(-u_input.d.x, -u_input.c, select(arg_1.x, false, true)), u_input.c);
    let var_2 = !(!global2.x);
    return var_2;
}

fn func_2() -> vec3<bool> {
    var var_0 = global0.a.e;
    var var_1 = select(!select(vec4<bool>(!global2.x, true, true, func_3(vec4<bool>(false, global0.a.e.a, false, false), vec2<bool>(true, false))), vec4<bool>(true, global0.a.e.a & false, all(global0.a.a), !var_0.a), vec4<bool>(!global2.x, global3.x, true, false)), select(!vec4<bool>(true, func_3(vec4<bool>(true, true, false, global2.x), global3.yy), global0.a.e.a, global2.x), select(select(!vec4<bool>(var_0.a, true, global0.a.a.x, false), !vec4<bool>(true, global3.x, global0.a.a.x, true), true), !select(vec4<bool>(false, var_0.a, false, global3.x), vec4<bool>(true, false, true, global0.a.a.x), vec4<bool>(true, global3.x, false, true)), true | func_1(vec4<bool>(true, true, global0.a.e.a, false)).x), select(select(!vec4<bool>(var_0.a, global0.a.a.x, global2.x, true), vec4<bool>(global2.x, global3.x, global0.a.a.x, global0.a.e.a), !vec4<bool>(true, true, true, global3.x)), select(vec4<bool>(true, false, global0.a.e.a, true), select(vec4<bool>(true, global3.x, global3.x, global0.a.e.a), vec4<bool>(global3.x, true, var_0.a, false), false), vec4<bool>(true, global2.x, true, true)), abs(global0.a.b.x) < (0i | u_input.a))), select(!vec4<bool>(var_0.b.x != 36187u, any(vec4<bool>(false, false, global2.x, false)), all(vec4<bool>(global3.x, global0.a.e.a, global3.x, global3.x)), true), vec4<bool>(global0.a.a.x, firstLeadingBit(global0.a.c.x) < countOneBits(u_input.a), false, global2.x), vec4<bool>(!(true && global3.x), true, !(global0.c.x > -139f), (true || global3.x) && all(vec4<bool>(global2.x, global3.x, true, true)))));
    global1 = array<i32, 15>();
    let var_2 = !global0.a.a.xy;
    let var_3 = global3.x;
    return global0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(all(select(!func_1(vec4<bool>(true, global2.x, global3.x, global0.a.a.x)), !select(vec3<bool>(false, global3.x, global0.a.e.a), vec3<bool>(true, false, false), global0.a.a), !func_2())), any(!vec4<bool>(false, true, true, global3.x)));
    let var_0 = Struct_2(global0.b.x);
    var var_1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(countOneBits(~(~_wgslsmith_mod_u32(var_0.a, u_input.b))), 15u)]);
}

