struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: Struct_1 = Struct_1(-10372i, vec2<u32>(0u, 3023u));

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: i32 = 2147483647i;

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<f32>(497f, 1429f, -1227f), -454f), Struct_2(vec3<f32>(-1098f, -689f, 1369f), -602f), Struct_2(vec3<f32>(515f, 640f, -1676f), 912f), Struct_2(vec3<f32>(-252f, -517f, 1185f), 244f), Struct_2(vec3<f32>(1545f, 2303f, 1041f), 2031f), Struct_2(vec3<f32>(-1783f, -1604f, -2041f), -653f), Struct_2(vec3<f32>(-1611f, -308f, 835f), -1056f), Struct_2(vec3<f32>(752f, -1252f, 539f), -309f), Struct_2(vec3<f32>(311f, -626f, -1051f), -926f), Struct_2(vec3<f32>(-1001f, -975f, -631f), 1020f), Struct_2(vec3<f32>(171f, 342f, -163f), -1812f), Struct_2(vec3<f32>(-1934f, -382f, -1326f), 1710f), Struct_2(vec3<f32>(-712f, -792f, -147f), 484f), Struct_2(vec3<f32>(970f, -193f, 1000f), -697f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = select(select(vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), !((global0.b.x > u_input.b.x) | (global0.a >= global0.a))), !select(vec2<bool>(true, true), vec2<bool>(arg_0.a <= 20529i, all(vec2<bool>(false, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    global2 = array<Struct_1, 16>();
    var var_1 = !(!select(vec2<bool>(true, true), select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), false & var_0.x)));
    var_1 = !vec2<bool>(all(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_0.x, true), var_1.x)), var_1.x);
    var var_2 = vec2<bool>(!(-arg_2.a != arg_1), var_0.x | !all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_1.x, true, var_1.x), false)));
    return select(!select(vec2<bool>(global0.a != -74884i, all(vec3<bool>(true, false, var_1.x))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), select(vec2<bool>(var_1.x, all(!vec2<bool>(var_0.x, var_1.x))), !select(select(vec2<bool>(true, false), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x)), !vec2<bool>(var_0.x, var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), vec2<bool>(var_0.x, true))), any(!(!vec4<bool>(var_2.x, false, true, false)))), var_0.x);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(global0.a, u_input.a.xw);
    var var_1 = global0.a;
    var var_2 = !select(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(global2[_wgslsmith_index_u32(global0.b.x, 16u)], -1i, var_0), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true)))));
    let var_3 = global2[_wgslsmith_index_u32(~54633u, 16u)];
    global1 = array<vec3<i32>, 3>();
    return select(select(select(select(vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, true, var_2.x), select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, true))), select(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_2.x, true), vec3<bool>(false, true, false)), !vec3<bool>(false, true, var_2.x), select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, var_2.x))), !vec3<bool>(var_2.x, var_2.x, var_2.x)), !select(select(vec3<bool>(var_2.x, true, false), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, var_2.x, false)), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, true), var_2.x), var_2.x && false), var_2.x), vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, arg_0.a.x < _wgslsmith_f_op_f32(-arg_0.a.x), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = !(!(!vec3<bool>(true, true, arg_0.x > 2147483647i)));
    var var_1 = arg_2;
    let var_2 = !select(select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), func_2(Struct_2(var_1.a, -282f)), var_0.x), vec3<bool>(var_0.x, select(var_0.x, var_0.x, false), true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x))), select(!vec3<bool>(var_0.x, true, var_0.x), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x), var_0.x), var_0.x);
    var var_3 = abs(1u);
    let var_4 = Struct_2(arg_2.a, -517f);
    return -_wgslsmith_div_i32(countOneBits(~(-2147483647i)), _wgslsmith_mult_i32(u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global0.b.x, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(global0.b.x, 3u)] & (vec3<i32>(global0.a << (var_0.b.x % 32u), u_input.c, func_1(vec4<i32>(-2147483647i, -9178i, 2147483647i, var_0.a), u_input.a, Struct_2(vec3<f32>(-1000f, 1774f, -1872f), -298f))) ^ max(-vec3<i32>(u_input.c, 4649i, -8448i), global1[_wgslsmith_index_u32(4294967295u, 3u)] & global1[_wgslsmith_index_u32(u_input.b.x, 3u)])));
}

