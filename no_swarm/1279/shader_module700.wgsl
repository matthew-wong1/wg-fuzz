struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), vec4<f32>(580f, -694f, 363f, 705f));

var<private> global1: f32;

var<private> global2: array<i32, 10>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<f32>(-558f, 1144f, 901f, 1037f)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), vec4<f32>(1382f, -460f, 1073f, -1506f)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true), vec4<f32>(-711f, 1232f, 135f, 1313f)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true), vec4<f32>(-590f, 1622f, 914f, 1194f)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<f32>(553f, -721f, 254f, -1952f)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), vec4<f32>(-1149f, -981f, 878f, 2780f)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false), vec4<f32>(-1000f, 419f, -1000f, -792f)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false), vec4<f32>(2704f, 378f, -774f, -280f)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true), vec4<f32>(-1238f, 2737f, 309f, 1000f)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec4<f32>(-851f, -892f, 209f, 634f)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false), vec4<f32>(186f, -1323f, -1975f, 665f)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, false), vec4<f32>(-1394f, -629f, 625f, 203f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec4<f32> {
    global3 = array<Struct_1, 12>();
    let var_0 = !select(vec4<bool>(false, true, 1000f > _wgslsmith_f_op_f32(-1057f + global0.c.x), !any(vec3<bool>(global0.a.x, true, global0.a.x))), vec4<bool>(true, false, true, true), global0.a.x & ((u_input.a == global2[_wgslsmith_index_u32(66981u, 10u)]) & (global0.b.x || global0.a.x)));
    var var_1 = global0.a.x;
    global0 = global3[_wgslsmith_index_u32(1u, 12u)];
    let var_2 = Struct_1(!vec3<bool>(true, true, !(1937f >= global0.c.x)), !var_0.zz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-332f)), -1617f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(sign(-555f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) * vec4<f32>(global0.c.x, -1531f, -500f, -1310f))))));
    return var_2.c;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, arg_0)))), global0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1237f))))))));
    let var_1 = _wgslsmith_add_i32(43144i, u_input.a);
    var var_2 = abs(abs(select(_wgslsmith_mod_vec4_i32(vec4<i32>(45303i, -15058i, 19599i, global2[_wgslsmith_index_u32(arg_1, 10u)]), vec4<i32>(-949i, -1i, 54393i, -5934i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -12717i, -59215i, global2[_wgslsmith_index_u32(arg_1, 10u)]), vec4<i32>(-59221i, 1i, -42208i, var_1)), vec4<bool>(global0.b.x, false, false, false)) | select(~vec4<i32>(-27578i, -39001i, u_input.a, u_input.a), vec4<i32>(var_1, u_input.a, u_input.a, -1i), !vec4<bool>(false, true, false, arg_2))));
    global0 = Struct_1(vec3<bool>(true, global0.a.x, global0.a.x), vec2<bool>(global0.b.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + global0.c), vec4<bool>(global0.a.x & global0.b.x, arg_1 <= arg_1, true, global0.b.x))), _wgslsmith_f_op_vec4_f32(func_2()), !(~global2[_wgslsmith_index_u32(0u, 10u)] <= _wgslsmith_add_i32(u_input.a, var_1)))));
    var var_3 = vec4<i32>(-1i) * -reverseBits(vec4<i32>(-u_input.a, u_input.a, global2[_wgslsmith_index_u32(1u, 10u)], 1i));
    return _wgslsmith_f_op_f32(ceil(arg_0));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(1u), 12u)];
    let var_1 = arg_0;
    var var_2 = Struct_1(!(!global0.a), !vec2<bool>(arg_0.a.x, all(!vec4<bool>(var_1.a.x, true, true, var_1.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.c.x, -569f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -360f), 1596f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(arg_0.c.x, -1460f), -235f, 376f)))));
    let var_3 = 4294967295u;
    var var_4 = global3[_wgslsmith_index_u32(52196u, 12u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.c.x, ~(~57093u), global0.a.x))));
    var var_0 = vec3<bool>(all(vec2<bool>(true, true)), !func_3(Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -303f, global0.c.x, global0.c.x) + vec4<f32>(global0.c.x, 598f, global0.c.x, global0.c.x))), 39819u), global0.c.x > global0.c.x);
    global2 = array<i32, 10>();
    var var_1 = Struct_1(vec3<bool>(true, any(select(var_0.yz, select(global0.b, vec2<bool>(global0.b.x, global0.a.x), var_0.yz), select(vec2<bool>(global0.a.x, global0.b.x), global0.b, true))), true), select(select(!global0.b, select(!var_0.xz, global0.a.xz, true), true), global0.a.yz, global0.b.x | true), _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)) + _wgslsmith_f_op_vec4_f32(floor(global0.c)))));
    var var_2 = global3[_wgslsmith_index_u32(~(~(~1u)), 12u)];
    var var_3 = 866f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~1u, ~43781u, ~1u), vec3<u32>(1u, 1u, 1u)), 1922f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).ww * vec2<f32>(344f, var_2.c.x)))), i32(-1i) * -8457i);
}

