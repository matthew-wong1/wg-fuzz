struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(731f, Struct_1(vec4<bool>(false, true, false, true), false, vec4<u32>(0u, 417u, 26355u, 0u)), vec4<u32>(0u, 77834u, 4294967295u, 1u), true), Struct_2(-305f, Struct_1(vec4<bool>(false, true, true, false), true, vec4<u32>(0u, 5901u, 1u, 39433u)), vec4<u32>(44219u, 43561u, 4294967295u, 65706u), true), Struct_2(-1203f, Struct_1(vec4<bool>(true, false, true, false), true, vec4<u32>(22443u, 41417u, 55316u, 4294967295u)), vec4<u32>(55622u, 8721u, 4294967295u, 0u), false), Struct_2(-517f, Struct_1(vec4<bool>(false, true, true, true), true, vec4<u32>(49804u, 22716u, 1u, 0u)), vec4<u32>(9054u, 63597u, 4294967295u, 34902u), true), Struct_2(-224f, Struct_1(vec4<bool>(false, false, true, false), false, vec4<u32>(1u, 26812u, 103883u, 33113u)), vec4<u32>(38716u, 1u, 4697u, 0u), true), Struct_2(2187f, Struct_1(vec4<bool>(true, false, false, false), true, vec4<u32>(4294967295u, 10618u, 18859u, 1u)), vec4<u32>(76479u, 42994u, 1u, 21541u), true), Struct_2(1817f, Struct_1(vec4<bool>(true, false, false, false), false, vec4<u32>(0u, 1u, 0u, 29479u)), vec4<u32>(1u, 87397u, 82973u, 1u), true), Struct_2(-1177f, Struct_1(vec4<bool>(false, false, true, true), false, vec4<u32>(17596u, 4294967295u, 40264u, 0u)), vec4<u32>(10261u, 4294967295u, 28617u, 897u), true), Struct_2(1000f, Struct_1(vec4<bool>(true, true, false, true), true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 18597u)), vec4<u32>(4294967295u, 0u, 0u, 0u), true), Struct_2(-894f, Struct_1(vec4<bool>(true, true, false, false), true, vec4<u32>(20478u, 4294967295u, 0u, 1u)), vec4<u32>(0u, 1u, 98636u, 17031u), true), Struct_2(-804f, Struct_1(vec4<bool>(true, false, false, true), false, vec4<u32>(4294967295u, 1u, 56568u, 0u)), vec4<u32>(32277u, 8782u, 66266u, 14700u), false), Struct_2(1041f, Struct_1(vec4<bool>(true, true, false, false), true, vec4<u32>(27590u, 4294967295u, 41165u, 1u)), vec4<u32>(4294967295u, 0u, 1u, 0u), true), Struct_2(1000f, Struct_1(vec4<bool>(false, false, false, false), true, vec4<u32>(4294967295u, 23252u, 1u, 0u)), vec4<u32>(44615u, 47567u, 4294967295u, 0u), true), Struct_2(-726f, Struct_1(vec4<bool>(true, true, false, true), false, vec4<u32>(4294967295u, 39385u, 1u, 44383u)), vec4<u32>(77652u, 4294967295u, 4294967295u, 19277u), true), Struct_2(620f, Struct_1(vec4<bool>(false, true, false, true), true, vec4<u32>(39391u, 4294967295u, 72923u, 0u)), vec4<u32>(4294967295u, 53596u, 0u, 6081u), false), Struct_2(-1000f, Struct_1(vec4<bool>(true, true, true, false), false, vec4<u32>(0u, 30689u, 0u, 0u)), vec4<u32>(1u, 14289u, 4294967295u, 54048u), false));

var<private> global1: bool = true;

var<private> global2: bool;

var<private> global3: array<Struct_2, 11>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), true, vec4<u32>(1u, 4294967295u, 4294967295u, 120960u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_2, 16>();
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(global4.c.x, firstTrailingBit(arg_0.c.x))), 105558u), arg_0.b.c.x);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-116f))), Struct_1(global4.a, !global4.a.x, global4.c), global4.c, all(select(global4.a, vec4<bool>(select(false, global4.b, true), any(vec4<bool>(global4.a.x, global4.b, false, true)), !global4.a.x, u_input.a >= 10125i), select(global4.b, u_input.a < 4175i, global4.b))));
    let var_1 = global3[_wgslsmith_index_u32(global4.c.x, 11u)];
    let var_2 = var_0.b;
    global4 = Struct_1(var_1.b.a, any(var_0.b.a.xwx), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 20668u, 41023u, global4.c.x) << (var_1.c % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(var_1.c, var_0.b.c)));
    let var_3 = Struct_3(~(~vec2<u32>(1u, var_2.c.x) << (~vec2<u32>(var_0.b.c.x, 77501u) % vec2<u32>(32u))) | reverseBits(vec2<u32>(firstLeadingBit(global4.c.x), select(var_0.b.c.x, 1u, false))));
    return 858f;
}

fn func_2(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(step(-1067f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = vec3<u32>(~(~u_input.c.x) >> (global4.c.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~global4.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 29820u, 4294967295u, 9905u), global4.c)), global4.c.x), _wgslsmith_sub_u32(~4294967295u, max(~u_input.c.x, func_1(Struct_2(402f, Struct_1(vec4<bool>(global4.b, true, false, false), global4.a.x, vec4<u32>(u_input.d, u_input.c.x, u_input.d, global4.c.x)), vec4<u32>(0u, global4.c.x, 1u, u_input.c.x), true))))) >> (vec3<u32>(~5181u, 1u, ~(u_input.c.x >> (global4.c.x % 32u))) % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -780f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(152f)), -170f))) - _wgslsmith_div_f32(2793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f))));
    let var_2 = Struct_3(vec2<u32>(0u, ~72613u));
    let var_3 = ~(~var_1.x);
    return StorageBuffer(countOneBits(vec3<u32>(var_3, firstTrailingBit(var_3) >> (countOneBits(29258u) % 32u), ~var_3)), global4.c, 4294967295u, countOneBits(vec2<i32>(-2147483647i, -54769i)), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 11>();
    global2 = true;
    var var_0 = vec4<bool>(true, global4.a.x, !(!(func_1(Struct_2(298f, Struct_1(global4.a, global4.b, vec4<u32>(4294967295u, 78455u, global4.c.x, u_input.c.x)), global4.c, true)) != _wgslsmith_dot_vec4_u32(vec4<u32>(41874u, global4.c.x, u_input.d, 17771u), vec4<u32>(6174u, 1u, 4294967295u, 9292u)))), all(select(!global4.a.xxx, select(!global4.a.zyz, vec3<bool>(global4.b, false, global4.b), true), select(global4.a.wyy, vec3<bool>(false, false, false), !vec3<bool>(global4.b, true, false)))));
    let var_1 = global4.a.yw;
    var var_2 = Struct_1(!select(vec4<bool>(false, any(global4.a), true, select(global4.b, true, true)), global4.a, vec4<bool>(var_0.x, var_1.x, !var_0.x, global4.c.x > global4.c.x)), true || !(!(!var_1.x)), ~global4.c);
    let x = u_input.a;
    s_output = func_2(var_0.yx);
}

